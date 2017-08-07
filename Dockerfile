FROM microsoft/dotnet:2.0.0-preview2-sdk

RUN apt-get update
RUN apt-get install unzip
RUN curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg

WORKDIR /app
COPY /bin/Debug/netcoreapp2.0/publish/ .

ENTRYPOINT ["dotnet", "dotnetcore-try.dll"]