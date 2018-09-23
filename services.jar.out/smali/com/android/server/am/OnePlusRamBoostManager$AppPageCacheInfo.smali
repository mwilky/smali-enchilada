.class Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;
.super Ljava/lang/Object;
.source "OnePlusRamBoostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusRamBoostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPageCacheInfo"
.end annotation


# instance fields
.field public mHotCount:Ljava/lang/String;

.field private mPid:I

.field public mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusRamBoostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;->mPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;->mHotCount:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;->mPid:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppPageCacheInfo:{ pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",hotcount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;->mHotCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;->mHotCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
