.class final Lcom/evancharlton/mileage/io/DbExportActivity$DbExportTask;
.super Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
.source "DbExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/io/DbExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DbExportTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evancharlton/mileage/io/DbExportActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evancharlton/mileage/io/DbExportActivity$1;

    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/DbExportActivity$DbExportTask;-><init>()V

    return-void
.end method


# virtual methods
.method public performExport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/lang/String;

    .line 19
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 20
    .local v1, "input":Ljava/nio/channels/FileChannel;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 21
    .local v6, "output":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 22
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 23
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p2

    .line 25
    .end local v1    # "input":Ljava/nio/channels/FileChannel;
    .end local v6    # "output":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v0

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
