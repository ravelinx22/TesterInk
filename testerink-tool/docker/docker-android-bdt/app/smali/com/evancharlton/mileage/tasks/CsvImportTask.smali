.class public Lcom/evancharlton/mileage/tasks/CsvImportTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvImportTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<",
        "Lcom/evancharlton/mileage/io/CsvImportActivity;",
        "Landroid/os/Bundle;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CsvImportTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    return-void
.end method

.method private getData(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "data"    # [Ljava/lang/String;

    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, p3, v0

    return-object v0
.end method

.method private setBoolean(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 135
    invoke-direct {p0, p3, p2, p4}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getData(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 136
    .local v0, "parsed":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 137
    return-void
.end method

.method private setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-direct {p0, p3, p2, p4}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getData(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "value":Ljava/lang/String;
    const-string v1, "CsvImportTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 126
    .local v1, "parsed":D
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "parsed":D
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 129
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 131
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 24
    .param p1, "params"    # [Landroid/os/Bundle;

    .line 32
    move-object/from16 v1, p0

    const/4 v2, 0x0

    aget-object v4, p1, v2

    .line 34
    .local v4, "args":Landroid/os/Bundle;
    const-string v0, "wipe data"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 35
    .local v5, "erase":Z
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/evancharlton/mileage/io/CsvImportActivity;

    invoke-virtual {v8}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    new-array v8, v6, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const v9, 0x7f080132

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v1, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 40
    :cond_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "date_format"

    .line 41
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v8, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/evancharlton/mileage/io/CsvImportActivity;

    invoke-virtual {v9}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v2

    const v9, 0x7f080131

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v7

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 46
    const-string v0, "filename"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "base":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "filename":Ljava/lang/String;
    const/4 v11, 0x0

    .line 49
    .local v11, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    move v12, v2

    .line 51
    .local v12, "i":I
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v13, v0

    .line 52
    .local v13, "reader":Ljava/io/BufferedReader;
    new-instance v0, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v0, v13}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    move-object v11, v0

    .line 55
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    .line 57
    :goto_0
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v0

    .local v14, "data":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 59
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, "values":Landroid/content/ContentValues;
    const-string v15, "total_cost"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 61
    const-string v15, "price"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 62
    const-string v15, "volume"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 63
    const-string v15, "odometer"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 64
    const-string v15, "economy"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 65
    const-string v15, "latitude"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 66
    const-string v15, "longitude"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 67
    const-string v15, "is_partial"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setBoolean(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 68
    const-string v15, "restart"

    invoke-direct {v1, v0, v15, v4, v14}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setBoolean(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 70
    const-string v15, "vehicle_id"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 71
    .local v15, "vehicleIndex":I
    aget-object v16, v14, v15

    move-object/from16 v17, v16

    .line 72
    .local v17, "vehicle":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vehicle_"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    .end local v17    # "vehicle":Ljava/lang/String;
    .local v2, "vehicle":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 73
    .local v16, "vehicleId":J
    const-string v6, "vehicle_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v6, "timestamp"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 76
    .local v6, "dateIndex":I
    aget-object v7, v14, v6

    .line 77
    .local v7, "date":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    .line 78
    .local v19, "d":Ljava/util/Date;
    move-object/from16 v20, v2

    .end local v2    # "vehicle":Ljava/lang/String;
    .local v20, "vehicle":Ljava/lang/String;
    const-string v2, "timestamp"

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    new-instance v2, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v2, v0}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/content/ContentValues;)V

    .line 81
    .local v2, "f":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/evancharlton/mileage/dao/Fillup;->save(Landroid/content/Context;)Z

    .line 82
    move-object/from16 v23, v0

    const/4 v3, 0x1

    .end local v0    # "values":Landroid/content/ContentValues;
    .local v23, "values":Landroid/content/ContentValues;
    new-array v0, v3, [Ljava/lang/Integer;

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v0, v18

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 83
    .end local v2    # "f":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v6    # "dateIndex":I
    .end local v7    # "date":Ljava/lang/String;
    .end local v15    # "vehicleIndex":I
    .end local v16    # "vehicleId":J
    .end local v19    # "d":Ljava/util/Date;
    .end local v20    # "vehicle":Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    const/4 v2, 0x2

    :try_start_2
    new-array v3, v2, [Ljava/lang/Integer;

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-virtual {v0}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->getErrorMessage()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v3, v15

    invoke-virtual {v1, v3}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .end local v0    # "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    :goto_1
    nop

    .line 57
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 92
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .end local v14    # "data":[Ljava/lang/String;
    :cond_1
    nop

    .line 93
    :try_start_3
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 96
    :cond_2
    :goto_2
    goto :goto_5

    .line 95
    :catch_1
    move-exception v0

    .line 97
    goto :goto_5

    .line 91
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 88
    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Ljava/text/ParseException;
    :try_start_4
    const-string v2, "CsvImportTask"

    const-string v3, "Couldn\'t parse a field!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    .end local v0    # "e":Ljava/text/ParseException;
    if-eqz v11, :cond_2

    .line 93
    :try_start_5
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 91
    :goto_3
    nop

    .line 92
    if-eqz v11, :cond_3

    .line 93
    :try_start_6
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 95
    :catch_3
    move-exception v0

    nop

    .line 96
    :cond_3
    :goto_4
    throw v2

    .line 87
    :catch_4
    move-exception v0

    .line 92
    if-eqz v11, :cond_2

    .line 93
    :try_start_7
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 99
    :goto_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->doInBackground([Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .line 113
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvImportActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvImportActivity;->completed(I)V

    .line 114
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "updates"    # [Ljava/lang/Integer;

    .line 104
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvImportActivity;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvImportActivity;->error(I)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvImportActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvImportActivity;->update(I)V

    .line 109
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
