.class public Lcom/evancharlton/mileage/ServiceIntervalsListActivity;
.super Lcom/evancharlton/mileage/BaseListActivity;
.source "ServiceIntervalsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_CREATE:I = 0x1

.field private static final MENU_TEMPLATES:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFrom()[Ljava/lang/String;
    .locals 3

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "description"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 2

    .line 67
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 99
    nop

    .line 100
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 99
    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/ServiceInterval;

    move-result-object v0

    .line 101
    .local v0, "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    const/4 v1, -0x3

    if-eq p2, v1, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->delete(Landroid/content/Context;)Z

    .line 105
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->deleteAlarm(Landroid/content/Context;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/evancharlton/mileage/dao/ServiceInterval;->scheduleAlarm(Landroid/content/Context;J)V

    .line 110
    nop

    .line 114
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f050010

    if-eq v0, v1, :cond_1

    const v1, 0x7f050012

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    nop

    .line 137
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 32
    .local v1, "id":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 33
    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->showDialog(I)V

    .line 35
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .line 39
    nop

    .line 40
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 39
    invoke-static {p0, v0, v1}, Lcom/evancharlton/mileage/dao/ServiceInterval;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/ServiceInterval;

    move-result-object v0

    .line 41
    .local v0, "interval":Lcom/evancharlton/mileage/dao/ServiceInterval;
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getVehicleId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v1

    .line 42
    .local v1, "vehicle":Lcom/evancharlton/mileage/dao/Vehicle;
    const v2, 0x7f080027

    if-eq p1, v2, :cond_0

    .line 54
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 44
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040013

    .line 45
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    .line 46
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080091

    .line 47
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080095

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 52
    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Vehicle;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 50
    invoke-virtual {p0, v3, v4}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 44
    return-object v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f08000f

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f040002

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 79
    const/4 v1, 0x2

    const v2, 0x7f080097

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 80
    const v1, 0x7f040005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 81
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(J)V
    .locals 1
    .param p1, "id"    # J

    .line 72
    const-class v0, Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->loadItem(JLjava/lang/Class;)V

    .line 73
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 91
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return v1

    .line 88
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setupEmptyView()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    const v2, 0x7f070009

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method
