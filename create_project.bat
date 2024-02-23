REM =============================================
REM DECLARATIONS
REM =============================================
set SOLUTION_DIRECTORY=personapi
set SOLUTION_NAME=Enigma.Tef.Person
set WEBAPI_NAME=Enigma.Tef.PersonApi
REM =============================================
REM CREATE DIRECTORY STRUCTURE
REM =============================================
mkdir %SOLUTION_DIRECTORY%
cd %SOLUTION_DIRECTORY%
mkdir src
mkdir tests
REM =============================================
REM CREATE SOLUTION
REM =============================================
dotnet new sln --name %SOLUTION_NAME%
REM =============================================
REM CREATE PROJECTS AND THEM TO SOLUTION
REM =============================================
cd src
dotnet dotnet new webapi --use-controllers -n %WEBAPI_NAME%
dotnet dotnet new classlib -n %SOLUTION_NAME%.Domain
dotnet dotnet new classlib -n %SOLUTION_NAME%.Application
dotnet dotnet new classlib -n %SOLUTION_NAME%.Infrastructure
cd ..
dir
dotnet sln %SOLUTION_NAME%.sln add ./src/%WEBAPI_NAME%/%WEBAPI_NAME%.csproj
dotnet sln %SOLUTION_NAME%.sln add ./src/%SOLUTION_NAME%.Domain/%SOLUTION_NAME%.Domain.csproj
dotnet sln %SOLUTION_NAME%.sln add ./src/%SOLUTION_NAME%.Application/%SOLUTION_NAME%.Application.csproj
dotnet sln %SOLUTION_NAME%.sln add ./src/%SOLUTION_NAME%.Infrastructure/%SOLUTION_NAME%.Infrastructure.csproj
REM =============================================
REM ADD Startup.cs
REM =============================================
cd ./src/%WEBAPI_NAME%/
echo using System; > Startup.cs
echo public class Startup >> Startup.cs
echo { >> Startup.cs
echo     public void ConfigureServices() >> Startup.cs
echo     { >> Startup.cs
echo     } >> Startup.cs
echo     public void Configure() >> Startup.cs
echo     { >> Startup.cs
echo     } >> Startup.cs
echo } >> Startup.cs
REM =============================================
REM FINISHED
REM =============================================