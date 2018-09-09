.class public Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SchedtuneParamItem"
.end annotation


# instance fields
.field private mDefaultParam:Ljava/lang/String;

.field private mParam:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusPerfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "defaultParam"    # Ljava/lang/String;

    .line 567
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mPath:Ljava/lang/String;

    .line 565
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mParam:Ljava/lang/String;

    .line 566
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mDefaultParam:Ljava/lang/String;

    .line 568
    iput-object p2, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mPath:Ljava/lang/String;

    .line 569
    iput-object p3, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mParam:Ljava/lang/String;

    .line 570
    iput-object p4, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mDefaultParam:Ljava/lang/String;

    .line 571
    return-void
.end method


# virtual methods
.method public getDefaultParam()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mDefaultParam:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mParam:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SchedtuneParamItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mParam:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mDefaultParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
