.class public Landroid/app/servertransaction/LaunchActivityItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "LaunchActivityItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/LaunchActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private mCurConfig:Landroid/content/res/Configuration;

.field private mIdent:I

.field private mInfo:Landroid/content/pm/ActivityInfo;

.field private mIntent:Landroid/content/Intent;

.field private mIsForward:Z

.field private mOverrideConfig:Landroid/content/res/Configuration;

.field private mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentState:Landroid/os/PersistableBundle;

.field private mProcState:I

.field private mProfilerInfo:Landroid/app/ProfilerInfo;

.field private mReferrer:Ljava/lang/String;

.field private mState:Landroid/os/Bundle;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/LaunchActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/LaunchActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/LaunchActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 18

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/ActivityInfo;

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/res/CompatibilityInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v13

    sget-object v1, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    sget-object v1, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/app/ProfilerInfo;

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v17}, Landroid/app/servertransaction/LaunchActivityItem;->setValues(Landroid/app/servertransaction/LaunchActivityItem;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/LaunchActivityItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private activityInfoEqual(Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    iget v3, p1, Landroid/content/pm/ActivityInfo;->flags:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    iget v3, p1, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1
.end method

.method private static areBundlesEqual(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method public static obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)Landroid/app/servertransaction/LaunchActivityItem;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z",
            "Landroid/app/ProfilerInfo;",
            ")",
            "Landroid/app/servertransaction/LaunchActivityItem;"
        }
    .end annotation

    const-class v0, Landroid/app/servertransaction/LaunchActivityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/LaunchActivityItem;

    if-nez v0, :cond_0

    new-instance v1, Landroid/app/servertransaction/LaunchActivityItem;

    invoke-direct {v1}, Landroid/app/servertransaction/LaunchActivityItem;-><init>()V

    move-object v0, v1

    :cond_0
    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    invoke-static/range {v1 .. v16}, Landroid/app/servertransaction/LaunchActivityItem;->setValues(Landroid/app/servertransaction/LaunchActivityItem;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)V

    return-object v0
.end method

.method private static setValues(Landroid/app/servertransaction/LaunchActivityItem;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/servertransaction/LaunchActivityItem;",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z",
            "Landroid/app/ProfilerInfo;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iput p2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iput-object p3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iput-object p4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    iput-object p5, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iput-object p6, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p7, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iput-object p8, p0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput p9, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    iput-object p10, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iput-object p11, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iput-object p12, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iput-object p13, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iput-boolean p14, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iput-object p15, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/LaunchActivityItem;

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    if-eqz v3, :cond_5

    iget v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iget v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    if-ne v4, v5, :cond_5

    iget-object v4, v2, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v4}, Landroid/app/servertransaction/LaunchActivityItem;->activityInfoEqual(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    iget v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-static {v4, v5}, Landroid/app/servertransaction/LaunchActivityItem;->areBundlesEqual(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-static {v4, v5}, Landroid/app/servertransaction/LaunchActivityItem;->areBundlesEqual(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iget-boolean v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v5, v2, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "activityStart"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v6, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iget v7, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iget-object v8, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v10, v0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v11, v0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iget-object v12, v0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v13, v0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iget-object v14, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v15, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iget-object v5, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iget-boolean v4, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iget-object v2, v0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move v3, v4

    move-object v4, v1

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    move/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v19, p1

    invoke-direct/range {v4 .. v19}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;Landroid/app/ClientTransactionHandler;)V

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual {v3, v1, v4, v2}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->filterHashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->size()I

    move-result v4

    nop

    :cond_1
    add-int/2addr v2, v4

    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    add-int/2addr v0, v3

    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .locals 2

    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updateProcessState(IZ)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public recycle()V
    .locals 16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v15}, Landroid/app/servertransaction/LaunchActivityItem;->setValues(Landroid/app/servertransaction/LaunchActivityItem;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)V

    invoke-static/range {p0 .. p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LaunchActivityItem{intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",ident="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",curConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",persistentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pendingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pendingNewIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",profilerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
