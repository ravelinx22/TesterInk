.class public Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;
.super Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;
.source "CsvVehicleMappingActivity.java"


# instance fields
.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SimpleAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCount:I

.field private final mVehicleMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicleReaderTask:Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

.field private final mVehicles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicles:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mAdapters:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleMapping:Ljava/util/HashMap;

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mRowCount:I

    return-void
.end method

.method private restoreTask()V
    .locals 5

    .line 79
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleReaderTask:Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    .line 81
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleReaderTask:Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "vehicle_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;-><init>(I)V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleReaderTask:Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleReaderTask:Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->attach(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleReaderTask:Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleReaderTask:Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    :cond_1
    return-void
.end method


# virtual methods
.method protected buildIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 93
    const-class v0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 96
    .local v1, "vehicleId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 97
    .local v2, "spinner":Landroid/widget/Spinner;
    iget-object v3, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 98
    .local v3, "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    .local v4, "title":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vehicle_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    .end local v1    # "vehicleId":Ljava/lang/Long;
    .end local v2    # "spinner":Landroid/widget/Spinner;
    .end local v3    # "mapping":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "title":Ljava/lang/String;
    goto :goto_0

    .line 102
    :cond_0
    const-string v0, "total_rows"

    iget v1, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mRowCount:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->setResult(I)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public dataRead(Ljava/lang/String;)V
    .locals 3
    .param p1, "vehicle"    # Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SimpleAdapter;

    .line 113
    .local v2, "adapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {v2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 114
    .end local v2    # "adapter":Landroid/widget/SimpleAdapter;
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const-string v2, "title"

    const/4 v3, 0x0

    aput-object v2, v6, v3

    .line 42
    .local v6, "from":[Ljava/lang/String;
    new-array v7, v1, [I

    const v1, 0x1020014

    aput v1, v7, v3

    .line 46
    .local v7, "to":[I
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->BASE_URI:Landroid/net/Uri;

    sget-object v10, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;->PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 48
    .local v1, "vehicleCursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const v2, 0x7f070014

    iget-object v3, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 50
    .local v8, "row":Landroid/view/View;
    const v2, 0x7f050030

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 51
    .local v9, "label":Landroid/widget/TextView;
    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setId(I)V

    .line 55
    new-instance v11, Landroid/widget/SimpleAdapter;

    iget-object v4, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicles:Ljava/util/ArrayList;

    const v5, 0x1090008

    move-object v2, v11

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 57
    .local v2, "vehicles":Landroid/widget/SimpleAdapter;
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/SimpleAdapter;->setDropDownViewResource(I)V

    .line 58
    const v3, 0x7f050021

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 59
    .local v3, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setId(I)V

    .line 61
    iget-object v4, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v4, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleMapping:Ljava/util/HashMap;

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v2    # "vehicles":Landroid/widget/SimpleAdapter;
    .end local v3    # "spinner":Landroid/widget/Spinner;
    .end local v8    # "row":Landroid/view/View;
    .end local v9    # "label":Landroid/widget/TextView;
    .end local v10    # "title":Ljava/lang/String;
    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->restoreTask()V

    .line 70
    const v2, 0x7f08007e

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->setHeaderText(I)V

    .line 71
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mVehicleReaderTask:Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;

    return-object v0
.end method

.method public setRowCount(I)V
    .locals 0
    .param p1, "rowCount"    # I

    .line 118
    iput p1, p0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->mRowCount:I

    .line 119
    return-void
.end method
