.class final Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;
.super Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
.source "CsvExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/io/CsvExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsvExportTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evancharlton/mileage/io/CsvExportActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evancharlton/mileage/io/CsvExportActivity$1;

    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;-><init>()V

    return-void
.end method

.method private sendUpdate(II)V
    .locals 7
    .param p1, "num_written"    # I
    .param p2, "total"    # I

    .line 92
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    new-instance v2, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    iget-object v3, p0, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 92
    const v0, 0x7f08013b

    invoke-virtual {v3, v0, v4}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->publishProgress([Ljava/lang/Object;)V

    .line 94
    return-void
.end method


# virtual methods
.method public performExport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/lang/String;

    .line 29
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    .local v0, "writer":Ljava/io/BufferedWriter;
    new-instance v3, Lau/com/bytecode/opencsv/CSVWriter;

    invoke-direct {v3, v0}, Lau/com/bytecode/opencsv/CSVWriter;-><init>(Ljava/io/Writer;)V

    .line 33
    .local v3, "csvWriter":Lau/com/bytecode/opencsv/CSVWriter;
    sget-object v5, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 34
    .local v5, "uri":Landroid/net/Uri;
    iget-object v4, v1, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->CSV_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 36
    .local v4, "fillups":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 37
    .local v6, "FILLUP_COUNT":I
    const/4 v7, 0x1

    new-array v8, v7, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    new-instance v9, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, v11, v10}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(II)V

    aput-object v9, v8, v11

    invoke-virtual {v1, v8}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->publishProgress([Ljava/lang/Object;)V

    .line 39
    sget-object v8, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->CSV_PROJECTION:[Ljava/lang/String;

    array-length v8, v8

    .line 40
    .local v8, "COLUMN_COUNT":I
    new-array v9, v8, [Ljava/lang/String;

    .line 43
    .local v9, "data":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 44
    iget-object v12, v1, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    sget-object v13, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PLAINTEXT:[I

    aget v13, v13, v10

    invoke-virtual {v12, v13}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    .line 43
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 46
    .end local v10    # "i":I
    :cond_0
    invoke-virtual {v3, v9}, Lau/com/bytecode/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVWriter;->flush()V

    .line 48
    new-array v10, v7, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    new-instance v12, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    iget-object v13, v1, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    const v14, 0x7f08013a

    invoke-virtual {v13, v14}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;I)V

    aput-object v12, v10, v11

    invoke-virtual {v1, v10}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->publishProgress([Ljava/lang/Object;)V

    .line 51
    const/4 v10, -0x1

    .line 52
    .local v10, "COLUMN_DATE":I
    move v12, v10

    const/4 v10, 0x0

    .local v10, "i":I
    .local v12, "COLUMN_DATE":I
    :goto_1
    if-ge v10, v8, :cond_2

    .line 53
    sget-object v13, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->CSV_PROJECTION:[Ljava/lang/String;

    aget-object v13, v13, v10

    const-string v14, "timestamp"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 54
    move v12, v10

    .line 52
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 58
    .end local v10    # "i":I
    :cond_2
    iget-object v10, v1, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    .line 59
    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    .line 62
    .local v10, "DATE_FORMAT":Ljava/text/DateFormat;
    const/4 v13, 0x0

    .line 63
    .local v13, "numWritten":I
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 64
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v8, :cond_4

    .line 65
    if-ne v14, v12, :cond_3

    .line 66
    new-instance v15, Ljava/util/Date;

    move/from16 v16, v12

    .end local v12    # "COLUMN_DATE":I
    .local v16, "COLUMN_DATE":I
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-direct {v15, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v14

    goto :goto_4

    .line 68
    .end local v16    # "COLUMN_DATE":I
    .restart local v12    # "COLUMN_DATE":I
    :cond_3
    move/from16 v16, v12

    .end local v12    # "COLUMN_DATE":I
    .restart local v16    # "COLUMN_DATE":I
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v14

    .line 64
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v16

    const/4 v11, 0x0

    goto :goto_3

    .line 71
    .end local v14    # "i":I
    .end local v16    # "COLUMN_DATE":I
    .restart local v12    # "COLUMN_DATE":I
    :cond_4
    move/from16 v16, v12

    .end local v12    # "COLUMN_DATE":I
    .restart local v16    # "COLUMN_DATE":I
    invoke-virtual {v3, v9}, Lau/com/bytecode/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    .line 72
    add-int/lit8 v13, v13, 0x1

    rem-int/lit8 v11, v13, 0xa

    if-nez v11, :cond_5

    .line 73
    invoke-direct {v1, v13, v6}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->sendUpdate(II)V

    .line 74
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVWriter;->flush()V

    .line 62
    const/4 v14, 0x0

    goto :goto_5

    .line 76
    :cond_5
    new-array v11, v7, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    new-instance v12, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    invoke-direct {v12, v13}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(I)V

    const/4 v14, 0x0

    aput-object v12, v11, v14

    invoke-virtual {v1, v11}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->publishProgress([Ljava/lang/Object;)V

    .line 62
    :goto_5
    move/from16 v12, v16

    const/4 v11, 0x0

    goto :goto_2

    .line 79
    .end local v16    # "COLUMN_DATE":I
    .restart local v12    # "COLUMN_DATE":I
    :cond_6
    move/from16 v16, v12

    .end local v12    # "COLUMN_DATE":I
    .restart local v16    # "COLUMN_DATE":I
    invoke-direct {v1, v13, v6}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->sendUpdate(II)V

    .line 80
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVWriter;->flush()V

    .line 81
    invoke-virtual {v3}, Lau/com/bytecode/opencsv/CSVWriter;->close()V

    .line 83
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-object v2

    .line 86
    .end local v0    # "writer":Ljava/io/BufferedWriter;
    .end local v3    # "csvWriter":Lau/com/bytecode/opencsv/CSVWriter;
    .end local v4    # "fillups":Landroid/database/Cursor;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "FILLUP_COUNT":I
    .end local v8    # "COLUMN_COUNT":I
    .end local v9    # "data":[Ljava/lang/String;
    .end local v10    # "DATE_FORMAT":Ljava/text/DateFormat;
    .end local v13    # "numWritten":I
    .end local v16    # "COLUMN_DATE":I
    :catch_0
    move-exception v0

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method
