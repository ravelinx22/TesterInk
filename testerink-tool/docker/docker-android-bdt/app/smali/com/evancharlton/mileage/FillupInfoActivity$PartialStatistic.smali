.class final Lcom/evancharlton/mileage/FillupInfoActivity$PartialStatistic;
.super Lcom/evancharlton/mileage/provider/Statistic;
.source "FillupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/FillupInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PartialStatistic"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "label"    # I

    .line 184
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/provider/Statistic;-><init>(I)V

    .line 185
    return-void
.end method


# virtual methods
.method public format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "value"    # D

    .line 189
    const-string v0, "%b"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v6, p3, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
