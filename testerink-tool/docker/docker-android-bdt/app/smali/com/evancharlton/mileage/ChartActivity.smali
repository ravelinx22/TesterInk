.class public abstract Lcom/evancharlton/mileage/ChartActivity;
.super Landroid/app/Activity;
.source "ChartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
    }
.end annotation


# static fields
.field private static final PROGRESS_DIALOG:I = 0x1

.field public static final VEHICLE_ID:Ljava/lang/String; = "vehicle_id"


# instance fields
.field private mChart:Lcom/artfulbits/aiCharts/ChartView;

.field private mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mZoomControls:Landroid/widget/ZoomControls;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private restoreLastNonConfigurationInstance()V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ChartActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "saved":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 70
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 71
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    iput-object v2, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    .line 72
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/ChartActivity;->unserializeData(Ljava/lang/Object;)V

    .line 73
    .end local v1    # "array":[Ljava/lang/Object;
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ChartActivity;->createChartGenerator()Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    invoke-virtual {v1, p0}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->attach(Lcom/evancharlton/mileage/ChartActivity;)V

    .line 77
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 78
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/ChartActivity;->getExecuteParameters()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method protected addChartSeries(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V
    .locals 3
    .param p1, "series"    # Lcom/artfulbits/aiCharts/Base/ChartSeries;

    .line 127
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;-><init>()V

    .line 128
    .local v0, "area":Lcom/artfulbits/aiCharts/Base/ChartArea;
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->setFormat(Ljava/text/Format;)V

    .line 129
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mChart:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/ChartView;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mChart:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/ChartView;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method protected abstract createChartGenerator()Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;
.end method

.method protected final getChart()Lcom/artfulbits/aiCharts/ChartView;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mChart:Lcom/artfulbits/aiCharts/ChartView;

    return-object v0
.end method

.method protected getExecuteParameters()[Ljava/lang/Object;
    .locals 1

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 116
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;->cancel(Z)Z

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ChartActivity;->finish()V

    .line 120
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ChartActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/ChartView;

    iput-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mChart:Lcom/artfulbits/aiCharts/ChartView;

    .line 34
    const v0, 0x7f050039

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ZoomControls;

    iput-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mZoomControls:Landroid/widget/ZoomControls;

    .line 36
    invoke-direct {p0}, Lcom/evancharlton/mileage/ChartActivity;->restoreLastNonConfigurationInstance()V

    .line 38
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mChart:Lcom/artfulbits/aiCharts/ChartView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/ChartView;->setPanning(I)V

    .line 40
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mZoomControls:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/evancharlton/mileage/ChartActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ChartActivity$1;-><init>(Lcom/evancharlton/mileage/ChartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mZoomControls:Landroid/widget/ZoomControls;

    new-instance v1, Lcom/evancharlton/mileage/ChartActivity$2;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ChartActivity$2;-><init>(Lcom/evancharlton/mileage/ChartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .line 98
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ChartActivity;->removeDialog(I)V

    .line 103
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 104
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 105
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 106
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 108
    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 109
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/evancharlton/mileage/ChartActivity;->mChartGenerator:Lcom/evancharlton/mileage/ChartActivity$ChartGenerator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 63
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ChartActivity;->serializeData()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    return-object v0
.end method

.method protected abstract serializeData()Ljava/lang/Object;
.end method

.method protected abstract unserializeData(Ljava/lang/Object;)V
.end method

.method protected zoom(D)V
    .locals 2
    .param p1, "factor"    # D

    .line 56
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ChartActivity;->getChart()Lcom/artfulbits/aiCharts/ChartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/ChartView;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->mulZoom(D)V

    .line 57
    return-void
.end method
