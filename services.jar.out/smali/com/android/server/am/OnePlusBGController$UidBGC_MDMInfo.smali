.class public Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidBGC_MDMInfo"
.end annotation


# instance fields
.field public mCriteria:D

.field public mDrainType:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

.field public mIsForceStop:Z

.field public mIsRelief:Z

.field public mPkg:Ljava/lang/String;

.field public mRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;ZDZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mDrainType:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    iput-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mIsRelief:Z

    iput-wide p4, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mCriteria:D

    iput-boolean p6, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mIsForceStop:Z

    return-void
.end method


# virtual methods
.method public fillInPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;->mPkg:Ljava/lang/String;

    return-void
.end method
