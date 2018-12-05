.class public Lcom/evancharlton/mileage/tasks/FillupInfoTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "FillupInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask<",
        "Lcom/evancharlton/mileage/FillupInfoActivity;",
        "Ljava/lang/Void;",
        "Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFillup:Lcom/evancharlton/mileage/dao/Fillup;


# direct methods
.method public constructor <init>(Lcom/evancharlton/mileage/dao/Fillup;)V
    .locals 0
    .param p1, "fillup"    # Lcom/evancharlton/mileage/dao/Fillup;

    .line 12
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    .line 14
    return-void
.end method

.method private publish(ID)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "data"    # D

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;

    new-instance v1, Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;

    invoke-direct {v1, p1, p2, p3}, Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;-><init>(ID)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->publishProgress([Ljava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .line 29
    iget-object v0, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/Fillup;->loadPrevious(Landroid/content/Context;)Lcom/evancharlton/mileage/dao/Fillup;

    move-result-object v0

    .line 30
    .local v0, "prev":Lcom/evancharlton/mileage/dao/Fillup;
    iget-object v1, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/dao/Fillup;->setPrevious(Lcom/evancharlton/mileage/dao/Fillup;)V

    .line 33
    iget-object v1, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->isPartial()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const v3, 0x7f08001d

    invoke-direct {p0, v3, v1, v2}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->publish(ID)V

    .line 34
    const v1, 0x7f080022

    iget-object v2, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getVolume()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->publish(ID)V

    .line 35
    const v1, 0x7f08001c

    iget-object v2, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getOdometer()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->publish(ID)V

    .line 36
    const v1, 0x7f08001f

    iget-object v2, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getTotalCost()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->publish(ID)V

    .line 37
    const v1, 0x7f080020

    iget-object v2, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getUnitPrice()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->publish(ID)V

    .line 40
    iget-object v1, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/dao/Fillup;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const v1, 0x7f080084

    iget-object v2, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getDistance()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->publish(ID)V

    .line 42
    const v1, 0x7f080085

    iget-object v2, p0, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->mFillup:Lcom/evancharlton/mileage/dao/Fillup;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/dao/Fillup;->getEconomy()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->publish(ID)V

    .line 45
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected varargs onProgressUpdate([Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;)V
    .locals 4
    .param p1, "update"    # [Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;

    .line 18
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 19
    .local v2, "info":Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->getParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evancharlton/mileage/FillupInfoActivity;

    invoke-virtual {v3, v2}, Lcom/evancharlton/mileage/FillupInfoActivity;->addInformation(Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;)V

    .line 18
    .end local v2    # "info":Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, [Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;

    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/FillupInfoTask;->onProgressUpdate([Lcom/evancharlton/mileage/tasks/FillupInfoTask$DataHolder;)V

    return-void
.end method
