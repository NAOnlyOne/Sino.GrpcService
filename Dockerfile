FROM microsoft/dotnet

ADD ./ /usr/local/src
WORKDIR /usr/local/src/Sino.GrpcService.Host/

RUN cd /usr/local/src/
RUN dotnet restore -v http://api.nuget.org/v3/index.json
RUN dotnet build

EXPOSE 9007

CMD ["dotnet","run"]