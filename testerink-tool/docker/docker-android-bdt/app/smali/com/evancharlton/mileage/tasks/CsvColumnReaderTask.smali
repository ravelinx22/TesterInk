.class public Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvColumnReaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<",
        "Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->doInBackground([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "inputFiles"    # [Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 20
    .local v0, "inputFile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "absoluteInputFile":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 23
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v3, v2}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .local v3, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "columnNames":[Ljava/lang/String;
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v4

    .line 28
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .end local v4    # "columnNames":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ColumnReaderTask"

    const-string v4, "Could not get columns!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .end local v2    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->setColumns([Ljava/lang/String;)V

    .line 37
    return-void
.end method
