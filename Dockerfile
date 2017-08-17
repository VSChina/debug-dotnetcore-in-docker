FROM microsoft/dotnet:2.0.0-runtime

RUN apt-get update
RUN apt-get install -y unzip procps
RUN curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg

WORKDIR /app
COPY /bin/Debug/netcoreapp2.0/publish/ .

ENTRYPOINT ["dotnet", "dotnetcore-try.dll"]