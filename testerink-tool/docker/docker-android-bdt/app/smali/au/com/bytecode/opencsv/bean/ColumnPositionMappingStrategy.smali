.class public Lau/com/bytecode/opencsv/bean/ColumnPositionMappingStrategy;
.super Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;


# instance fields
.field protected columnMapping:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lau/com/bytecode/opencsv/bean/HeaderColumnNameMappingStrategy;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lau/com/bytecode/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public captureHeader(Lau/com/bytecode/opencsv/CSVReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getColumnMapping()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    return-object v0
.end method

.method protected getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lau/com/bytecode/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public setColumnMapping([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lau/com/bytecode/opencsv/bean/ColumnPositionMappingStrategy;->columnMapping:[Ljava/lang/String;

    return-void
.end method
