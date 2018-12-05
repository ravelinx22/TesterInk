.class public Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvDateReaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<",
        "Lcom/evancharlton/mileage/io/CsvDateFormatActivity;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CsvDateReaderTask"


# instance fields
.field private final mIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "index"    # I

    .line 20
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    .line 21
    iput p1, p0, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->mIndex:I

    .line 22
    const-string v0, "CsvDateReaderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing date from column #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 28
    .local v0, "inputFile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "absoluteInputFile":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v3, v2}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .local v3, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    .line 35
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "data":[Ljava/lang/String;
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    .line 37
    iget v5, p0, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->mIndex:I

    aget-object v5, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 38
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .end local v4    # "data":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "CsvDateReaderTask"

    const-string v4, "Could not get columns!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .end local v2    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->setRawDate(Ljava/lang/String;)V

    .line 47
    return-void
.end method
