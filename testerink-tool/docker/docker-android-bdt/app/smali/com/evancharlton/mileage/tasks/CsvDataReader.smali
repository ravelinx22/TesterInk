.class public Lcom/evancharlton/mileage/tasks/CsvDataReader;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvDataReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<",
        "Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
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

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDataReader;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8
    .param p1, "inputFiles"    # [Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 20
    .local v1, "inputFile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "absoluteInputFile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 22
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    move-object v5, v4

    .line 24
    .local v5, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v6

    .line 25
    new-instance v6, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v6, v3}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v6

    .line 27
    const/4 v6, 0x1

    new-array v6, v6, [[Ljava/lang/String;

    invoke-virtual {v5}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p0, v6}, Lcom/evancharlton/mileage/tasks/CsvDataReader;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ColumnReaderTask"

    const-string v7, "Could not get columns!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz v3, :cond_0

    .line 33
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 38
    :catch_1
    move-exception v0

    goto :goto_2

    .line 35
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 36
    invoke-virtual {v5}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 38
    :goto_2
    goto :goto_4

    .line 40
    :cond_1
    :goto_3
    nop

    .line 41
    :goto_4
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDataReader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    .line 52
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDataReader;->onProgressUpdate([[Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([[Ljava/lang/String;)V
    .locals 0
    .param p1, "rows"    # [[Ljava/lang/String;

    .line 47
    return-void
.end method
