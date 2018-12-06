.class public Lcom/evancharlton/mileage/services/AutomaticBackupService;
.super Landroid/app/IntentService;
.source "AutomaticBackupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;
    }
.end annotation


# static fields
.field private static final MIN_DELTA:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "Mileage.ABS"

.field private static mLastBackupTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/evancharlton/mileage/services/AutomaticBackupService;->mLastBackupTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    const-class v0, Lcom/evancharlton/mileage/services/AutomaticBackupService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private error(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 91
    const-string v0, "Mileage.ABS"

    const-string v1, "Backup failed!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-static {p0}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->get(Landroid/content/Context;)Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->wtf(Ljava/lang/Exception;)V

    .line 93
    return-void
.end method

.method public static run(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/services/AutomaticBackupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/evancharlton/mileage/services/AutomaticBackupService;->mLastBackupTime:J

    sub-long/2addr v0, v2

    .line 41
    .local v0, "delta":J
    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 42
    const-string v2, "Mileage.ABS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not backing up; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/evancharlton/mileage/services/AutomaticBackupService;->mLastBackupTime:J

    .line 47
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 48
    const-string v2, "mileage.db"

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/services/AutomaticBackupService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 49
    .local v2, "src":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/evancharlton/mileage/util/Util;->getExternalFolder()Ljava/io/File;

    move-result-object v4

    const-string v5, "mileage-backup.db"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v3, "dest":Ljava/io/File;
    const/4 v4, 0x0

    .line 52
    .local v4, "source":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 55
    .local v5, "destination":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 57
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 60
    invoke-static {p0}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->get(Landroid/content/Context;)Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;

    move-result-object v6

    const-string v7, "Unable to create file!"

    invoke-virtual {v6, v7}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->wtf(Ljava/lang/String;)V

    .line 63
    :cond_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    move-object v4, v6

    .line 64
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    move-object v5, v6

    .line 65
    const-wide/16 v9, 0x0

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    move-object v7, v5

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 66
    const-string v6, "Mileage.ABS"

    const-string v7, "Finished backup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-eqz v4, :cond_3

    .line 74
    :try_start_1
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v6

    .line 79
    :cond_3
    :goto_0
    if-eqz v5, :cond_8

    .line 81
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    .line 72
    :catchall_0
    move-exception v6

    goto :goto_4

    .line 69
    :catch_1
    move-exception v6

    .line 70
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v6}, Lcom/evancharlton/mileage/services/AutomaticBackupService;->error(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 74
    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 77
    goto :goto_1

    .line 75
    :catch_2
    move-exception v6

    .line 79
    :cond_4
    :goto_1
    if-eqz v5, :cond_8

    .line 81
    :try_start_5
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    .line 67
    :catch_3
    move-exception v6

    .line 68
    .local v6, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-direct {p0, v6}, Lcom/evancharlton/mileage/services/AutomaticBackupService;->error(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    .end local v6    # "fnfe":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_5

    .line 74
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 77
    goto :goto_2

    .line 75
    :catch_4
    move-exception v6

    .line 79
    :cond_5
    :goto_2
    if-eqz v5, :cond_8

    .line 81
    :try_start_8
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 84
    .end local v2    # "src":Ljava/io/File;
    .end local v3    # "dest":Ljava/io/File;
    .end local v4    # "source":Ljava/nio/channels/FileChannel;
    .end local v5    # "destination":Ljava/nio/channels/FileChannel;
    :goto_3
    goto :goto_7

    .line 82
    .restart local v2    # "src":Ljava/io/File;
    .restart local v3    # "dest":Ljava/io/File;
    .restart local v4    # "source":Ljava/nio/channels/FileChannel;
    .restart local v5    # "destination":Ljava/nio/channels/FileChannel;
    :catch_5
    move-exception v6

    goto :goto_3

    .line 72
    :goto_4
    if-eqz v4, :cond_6

    .line 74
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 77
    goto :goto_5

    .line 75
    :catch_6
    move-exception v7

    .line 79
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 81
    :try_start_a
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 84
    goto :goto_6

    .line 82
    :catch_7
    move-exception v7

    .line 84
    :cond_7
    :goto_6
    throw v6

    .line 88
    .end local v2    # "src":Ljava/io/File;
    .end local v3    # "dest":Ljava/io/File;
    .end local v4    # "source":Ljava/nio/channels/FileChannel;
    .end local v5    # "destination":Ljava/nio/channels/FileChannel;
    :cond_8
    :goto_7
    return-void
.end method
