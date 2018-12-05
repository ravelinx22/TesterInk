.class Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf$RealWtf;
.super Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;
.source "AutomaticBackupService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealWtf"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;-><init>(Landroid/content/Context;)V

    .line 121
    return-void
.end method


# virtual methods
.method public wtf(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;

    .line 125
    const-string v0, "Mileage.ABS"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget-object v0, p0, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf$RealWtf;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 129
    .local v0, "dropbox":Landroid/os/DropBoxManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, "message":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 134
    .local v2, "traces":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    const/16 v4, 0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 135
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 136
    aget-object v5, v2, v4

    .line 137
    .local v5, "trace":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    .line 138
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\t"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .end local v5    # "trace":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    .end local v4    # "i":I
    :cond_0
    const-string v4, "Mileage.AutomaticBackupService"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public wtf(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 145
    const-string v0, "Mileage.ABS"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method
