.class public Lcom/evancharlton/mileage/io/CsvImportActivity;
.super Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;
.source "CsvImportActivity.java"


# static fields
.field public static final TOTAL_ROWS:Ljava/lang/String; = "total_rows"


# instance fields
.field private mCsvImportTask:Lcom/evancharlton/mileage/tasks/CsvImportTask;

.field private mLog:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;-><init>()V

    return-void
.end method

.method private restoreTask()V
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/tasks/CsvImportTask;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mCsvImportTask:Lcom/evancharlton/mileage/tasks/CsvImportTask;

    .line 48
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mCsvImportTask:Lcom/evancharlton/mileage/tasks/CsvImportTask;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/evancharlton/mileage/tasks/CsvImportTask;

    invoke-direct {v0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mCsvImportTask:Lcom/evancharlton/mileage/tasks/CsvImportTask;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mCsvImportTask:Lcom/evancharlton/mileage/tasks/CsvImportTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->attach(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mCsvImportTask:Lcom/evancharlton/mileage/tasks/CsvImportTask;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mCsvImportTask:Lcom/evancharlton/mileage/tasks/CsvImportTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method protected buildIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->setResult(I)V

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public completed(I)V
    .locals 6
    .param p1, "numRecords"    # I

    .line 72
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mLog:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f080134

    invoke-virtual {p0, v4, v3}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method public error(I)V
    .locals 3
    .param p1, "error"    # I

    .line 67
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mLog:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f070015

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 28
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f05002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 29
    const v2, 0x7f05001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mLog:Landroid/widget/TextView;

    .line 31
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->restoreTask()V

    .line 33
    iget-object v2, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "total_rows"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 35
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getPreviousButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v4, 0x7f080045

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 37
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 38
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mCsvImportTask:Lcom/evancharlton/mileage/tasks/CsvImportTask;

    return-object v0
.end method

.method public update(I)V
    .locals 7
    .param p1, "update"    # I

    .line 58
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 59
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mLog:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080136

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/evancharlton/mileage/io/CsvImportActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    return-void
.end method
