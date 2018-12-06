.class public Lcom/evancharlton/mileage/charts/LastMonthCostChart;
.super Lcom/evancharlton/mileage/charts/IntervalCostChart;
.source "LastMonthCostChart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/evancharlton/mileage/charts/IntervalCostChart;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getAxisTitle()Ljava/lang/String;
    .locals 1

    .line 10
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/charts/LastMonthCostChart;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getInterval()J
    .locals 2

    .line 15
    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method
