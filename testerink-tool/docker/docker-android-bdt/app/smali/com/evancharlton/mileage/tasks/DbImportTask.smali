.class public Lcom/evancharlton/mileage/tasks/DbImportTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "DbImportTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<",
        "Lcom/evancharlton/mileage/io/DbImportActivity;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DbImportTask"

.field private static final TEMP_FILE:Ljava/lang/String;


# instance fields
.field private final mInput:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".import.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/evancharlton/mileage/tasks/DbImportTask;->mInput:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private cleanUp()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/DbImportActivity;

    const-string v1, "mileage.db"

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/DbImportActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 83
    .local v0, "database":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 84
    .local v1, "input":Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 85
    .local v2, "output":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object v3, v1

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v3

    .line 86
    .local v3, "bytes":J
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 87
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 88
    const-string v5, "DbImportTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrote "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v5, "tempDatabase":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 94
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/evancharlton/mileage/io/DbImportActivity;

    invoke-virtual {v6}, Lcom/evancharlton/mileage/io/DbImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v8, "reset"

    .line 95
    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 94
    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 96
    return-void
.end method

.method private makeBackup()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evancharlton/mileage/tasks/DbImportTask;->mInput:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 67
    .local v0, "input":Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 68
    .local v1, "output":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v2, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 69
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 70
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 71
    return-void
.end method

.method private upgradeDatabase()V
    .locals 3

    .line 74
    const-string v0, "DbImportTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 79
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f080137

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->makeBackup()V

    .line 41
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f080135

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 42
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f080139

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->upgradeDatabase()V

    .line 44
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f080138

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 45
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f080130

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 46
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->cleanUp()V

    .line 47
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f080133

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 52
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/DbImportActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/DbImportActivity;->setWorking(Z)V

    .line 63
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/DbImportActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/DbImportActivity;->setWorking(Z)V

    .line 34
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "updates"    # [Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/DbImportActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/DbImportActivity;->log(Ljava/lang/String;)V

    .line 58
    return-void
.end method
