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

    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mPath:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mParam:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mDefaultParam:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mParam:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mDefaultParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mDefaultParam:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mParam:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SchedtuneParamItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
