.class public final Lcom/evancharlton/mileage/util/Debugger;
.super Ljava/lang/Object;
.source "Debugger.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final DEBUG_LEVEL:I = 0x0

.field private static final DEBUG_NONE:I = 0x0

.field private static final DEBUG_QUIET:I = 0x1

.field private static final DEBUG_WARN:I = 0x2

.field private static final DEBUG_YELL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Debugger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkQueryOnUiThread(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    const-string v0, "Query on UI thread!"

    invoke-static {p0, v0}, Lcom/evancharlton/mileage/util/Debugger;->ensureNotUiThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method public static final ensureNotUiThread(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/evancharlton/mileage/util/Debugger;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0, p1}, Lcom/evancharlton/mileage/util/Debugger;->yell(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static final ensureOnUiThread(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/evancharlton/mileage/util/Debugger;->isOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0, p1}, Lcom/evancharlton/mileage/util/Debugger;->yell(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method private static final getStackTrace()Ljava/lang/String;
    .locals 5

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 53
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    .line 54
    .local v1, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x3

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 56
    const-string v4, "\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final isOnUiThread()Z
    .locals 1

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method private static final yell(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    :pswitch_2
    const-string v0, "Debugger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/evancharlton/mileage/util/Debugger;->getStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
