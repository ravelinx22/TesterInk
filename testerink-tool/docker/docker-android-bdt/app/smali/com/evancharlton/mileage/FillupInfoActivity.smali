.class public Lcom/evancharlton/mileage/FillupInfoActivity;
.super Landroid/app/Activity;
.source "FillupInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;,
        Lcom/evancharlton/mileage/FillupInfoActivity$PartialStatistic;,
        Lcom/evancharlton/mileage/FillupInfoActivity$Holder;
    }
.end annotation


# static fields
.field private static final GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

.field private static final INFO:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final STATS:[Lcom/evancharlton/mileage/provider/Statistic;

.field private static final TAG:Ljava/lang/String; = "FillupInfoActivity"


# instance fields
.field private mFillup:Lcom/evancharlton/mileage/dao/Fillup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoTask:Lcom/evancharlton/mileage/tasks/FillupInfoTask;

.field private final mLayouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/evancharlton/mileage/FillupInfoActivity$Holder;",
            ">;"
        }
    .end annotation
.end field

.field private mStatContainer:Landroid/widget/LinearLayout;

.field private mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/evancharlton/mileage/provider/Statistic;

    new-instance v1, Lcom/evancharlton/mileage/FillupInfoActivity$PartialStatistic;

    const v2, 0x7f08001d

    invoke-direct {v1, v2}, Lcom/evancharlton/mileage/FillupInfoActivity$PartialStatistic;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;

    const v3, 0x7f080022

    invoke-direct {v1, v3}, Lcom/evancharlton/mileage/provider/Statistics$FuelStatistic;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;

    const v4, 0x7f08001c

    invoke-direct {v1, v4}, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;-><init>(I)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;

    const v5, 0x7f080020

    invoke-direct {v1, v5}, Lcom/evancharlton/mileage/provider/Statistics$PriceStatistic;-><init>(I)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;

    const v5, 0x7f08001f

    invoke-direct {v1, v5}, Lcom/evancharlton/mileage/provider/Statistics$CostStatistic;-><init>(I)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sput-object v0, Lcom/evancharlton/mileage/FillupInfoActivity;->INFO:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 46
    new-array v0, v4, [Lcom/evancharlton/mileage/provider/Statistic;

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;

    const v5, 0x7f080084

    invoke-direct {v1, v5}, Lcom/evancharlton/mileage/provider/Statistics$DistanceStatistic;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;

    const v5, 0x7f080085

    invoke-direct {v1, v5}, Lcom/evancharlton/mileage/provider/Statistics$EconomyStatistic;-><init>(I)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/evancharlton/mileage/FillupInfoActivity;->STATS:[Lcom/evancharlton/mileage/provider/Statistic;

    .line 51
    new-array v0, v4, [Lcom/evancharlton/mileage/provider/StatisticsGroup;

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    sget-object v4, Lcom/evancharlton/mileage/FillupInfoActivity;->INFO:[Lcom/evancharlton/mileage/provider/Statistic;

    const v5, 0x7f080039

    invoke-direct {v1, v5, v4}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/evancharlton/mileage/provider/StatisticsGroup;

    sget-object v2, Lcom/evancharlton/mileage/FillupInfoActivity;->STATS:[Lcom/evancharlton/mileage/provider/Statistic;

    const v4, 0x7f08003a

    invoke-direct {v1, v4, v2}, Lcom/evancharlton/mileage/provider/StatisticsGroup;-><init>(I[Lcom/evancharlton/mileage/provider/Statistic;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/evancharlton/mileage/FillupInfoActivity;->GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mLayouts:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addInformation(Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;)V
    .locals 7
    .param p1, "update"    # Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;

    .line 162
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mLayouts:Landroid/util/SparseArray;

    iget v1, p1, Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;->key:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;

    .line 163
    .local v0, "holder":Lcom/evancharlton/mileage/FillupInfoActivity$Holder;
    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v1, v0, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;->view:Landroid/view/ViewGroup;

    .line 166
    .local v1, "view":Landroid/view/ViewGroup;
    const v2, 0x1020015

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    .local v2, "stat":Landroid/widget/TextView;
    iget-object v3, v0, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;->statistic:Lcom/evancharlton/mileage/provider/Statistic;

    iget-object v4, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    iget-wide v5, p1, Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;->data:D

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/evancharlton/mileage/provider/Statistic;->format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f05000d

    if-eq v0, v1, :cond_2

    const v1, 0x7f050023

    if-eq v0, v1, :cond_1

    const v1, 0x7f050028

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FillupInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    iget-object v2, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getPrevious()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->finish()V

    .line 146
    invoke-static {p0}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->get(Landroid/app/Activity;)Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;

    move-result-object v1

    const v2, 0x7f010001

    const v3, 0x7f010002

    invoke-virtual {v1, v2, v3}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->overridePendingTransition(II)V

    .line 148
    goto :goto_0

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FillupInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    iget-object v2, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getNext()Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->finish()V

    .line 155
    invoke-static {p0}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->get(Landroid/app/Activity;)Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;

    move-result-object v1

    const/high16 v2, 0x7f010000

    const v3, 0x7f010003

    invoke-virtual {v1, v2, v3}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->overridePendingTransition(II)V

    goto :goto_0

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/FillupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "dao_item_id"

    .line 137
    invoke-virtual {p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "dao_item_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/FillupInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    nop

    .line 159
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/FillupInfoActivity;->setContentView(I)V

    .line 73
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 76
    .local v1, "previous":Landroid/widget/Button;
    const v2, 0x7f050023

    invoke-virtual {v0, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 78
    .local v2, "next":Landroid/widget/Button;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v3, 0x7f05000d

    invoke-virtual {v0, v3}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v3, 0x7f05002e

    invoke-virtual {v0, v3}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "dao_item_id"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 85
    .local v3, "id":J
    sget-object v5, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 86
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/FillupInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v7, v6}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/database/Cursor;)V

    iput-object v7, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    iget-object v7, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v7}, Lcom/evancharlton/mileage/dao/Fillup;->getVehicleId()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/evancharlton/mileage/dao/Vehicle;->loadById(Landroid/content/Context;J)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v7

    iput-object v7, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    .line 92
    sget-object v7, Lcom/evancharlton/mileage/FillupInfoActivity;->GROUPS:[Lcom/evancharlton/mileage/provider/StatisticsGroup;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_1

    aget-object v11, v7, v10

    .line 93
    .local v11, "group":Lcom/evancharlton/mileage/provider/StatisticsGroup;
    iget-object v12, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f070004

    iget-object v14, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {v12, v13, v14, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/evancharlton/mileage/views/DividerView;

    .line 95
    .local v12, "divider":Lcom/evancharlton/mileage/views/DividerView;
    iget-object v13, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v11}, Lcom/evancharlton/mileage/provider/StatisticsGroup;->getLabel()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/evancharlton/mileage/views/DividerView;->setText(I)V

    .line 98
    invoke-virtual {v11}, Lcom/evancharlton/mileage/provider/StatisticsGroup;->getStatistics()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/evancharlton/mileage/provider/Statistic;

    .line 99
    .local v14, "stat":Lcom/evancharlton/mileage/provider/Statistic;
    iget-object v15, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f07001d

    move-wide/from16 v16, v3

    .end local v3    # "id":J
    .local v16, "id":J
    iget-object v3, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    .line 100
    const/4 v4, 0x0

    invoke-virtual {v15, v9, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 101
    .local v3, "layout":Landroid/view/ViewGroup;
    iget-object v4, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mStatContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v4, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mLayouts:Landroid/util/SparseArray;

    invoke-virtual {v14}, Lcom/evancharlton/mileage/provider/Statistic;->getLabel()I

    move-result v9

    new-instance v15, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;

    invoke-direct {v15, v3, v14}, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;-><init>(Landroid/view/ViewGroup;Lcom/evancharlton/mileage/provider/Statistic;)V

    invoke-virtual {v4, v9, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 105
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mVehicle:Lcom/evancharlton/mileage/dao/Vehicle;

    invoke-virtual {v14, v0, v9}, Lcom/evancharlton/mileage/provider/Statistic;->getLabel(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .end local v3    # "layout":Landroid/view/ViewGroup;
    .end local v14    # "stat":Lcom/evancharlton/mileage/provider/Statistic;
    nop

    .line 98
    move-wide/from16 v3, v16

    const/4 v9, 0x0

    goto :goto_1

    .line 92
    .end local v11    # "group":Lcom/evancharlton/mileage/provider/StatisticsGroup;
    .end local v12    # "divider":Lcom/evancharlton/mileage/views/DividerView;
    .end local v16    # "id":J
    .local v3, "id":J
    :cond_0
    move-wide/from16 v16, v3

    .end local v3    # "id":J
    .restart local v16    # "id":J
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_0

    .line 110
    .end local v16    # "id":J
    .restart local v3    # "id":J
    :cond_1
    move-wide/from16 v16, v3

    .end local v3    # "id":J
    .restart local v16    # "id":J
    iget-object v3, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4, v0}, Lcom/evancharlton/mileage/dao/Fillup;->loadPrevious(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 111
    iget-object v3, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    iget-object v4, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4, v0}, Lcom/evancharlton/mileage/dao/Fillup;->loadNext(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/evancharlton/mileage/dao/Fillup;->setNext(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 113
    iget-object v3, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object v3, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/dao/Fillup;->hasNext()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    const v3, 0x7f050019

    invoke-virtual {v0, v3}, Lcom/evancharlton/mileage/FillupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/views/FormattedDateView;

    .line 117
    .local v3, "header":Lcom/evancharlton/mileage/views/FormattedDateView;
    iget-object v4, v0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Fillup;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/evancharlton/mileage/views/FormattedDateView;->setText(J)V

    .line 119
    const v4, 0x7f080100

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/views/FormattedDateView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v4, v7}, Lcom/evancharlton/mileage/FillupInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/evancharlton/mileage/FillupInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    new-instance v0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;-><init>(Lcom/evancharlton/mileage/dao/Fillup;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInfoTask:Lcom/evancharlton/mileage/tasks/FillupInfoTask;

    .line 126
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInfoTask:Lcom/evancharlton/mileage/tasks/FillupInfoTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->attach(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity;->mInfoTask:Lcom/evancharlton/mileage/tasks/FillupInfoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method
