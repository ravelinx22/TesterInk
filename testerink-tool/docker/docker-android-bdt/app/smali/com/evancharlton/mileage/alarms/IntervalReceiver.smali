.class public Lcom/evancharlton/mileage/alarms/IntervalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntervalReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 15
    .local v0, "id":J
    invoke-static {p1, v0, v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/ServiceInterval;

    move-result-object v2

    .line 16
    .local v2, "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    invoke-virtual {v2, p1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->raiseNotification(Landroid/content/Context;)V

    .line 17
    return-void
.end method
