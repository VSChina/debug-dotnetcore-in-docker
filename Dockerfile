FROM microsoft/dotnet:2.0.0-preview2-sdk

WORKDIR /app
COPY /bin/Debug/netcoreapp2.0/publish/ .

ENTRYPOINT ["dotnet", "dotnetcore-try.dll"]