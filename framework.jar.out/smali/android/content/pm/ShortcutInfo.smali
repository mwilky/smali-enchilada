.class public final Landroid/content/pm/ShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ShortcutInfo$Builder;,
        Landroid/content/pm/ShortcutInfo$DisabledReason;,
        Landroid/content/pm/ShortcutInfo$CloneFlags;,
        Landroid/content/pm/ShortcutInfo$ShortcutFlags;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final CLONE_REMOVE_FOR_CREATOR:I = 0x9

.field public static final CLONE_REMOVE_FOR_LAUNCHER:I = 0xb

.field public static final CLONE_REMOVE_FOR_LAUNCHER_APPROVAL:I = 0xa

.field private static final CLONE_REMOVE_ICON:I = 0x1

.field private static final CLONE_REMOVE_INTENT:I = 0x2

.field public static final CLONE_REMOVE_NON_KEY_INFO:I = 0x4

.field public static final CLONE_REMOVE_RES_NAMES:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_REASON_APP_CHANGED:I = 0x2

.field public static final DISABLED_REASON_BACKUP_NOT_SUPPORTED:I = 0x65

.field public static final DISABLED_REASON_BY_APP:I = 0x1

.field public static final DISABLED_REASON_NOT_DISABLED:I = 0x0

.field public static final DISABLED_REASON_OTHER_RESTORE_ISSUE:I = 0x67

.field private static final DISABLED_REASON_RESTORE_ISSUE_START:I = 0x64

.field public static final DISABLED_REASON_SIGNATURE_MISMATCH:I = 0x66

.field public static final DISABLED_REASON_UNKNOWN:I = 0x3

.field public static final DISABLED_REASON_VERSION_LOWER:I = 0x64

.field public static final FLAG_ADAPTIVE_BITMAP:I = 0x200

.field public static final FLAG_DISABLED:I = 0x40

.field public static final FLAG_DYNAMIC:I = 0x1

.field public static final FLAG_HAS_ICON_FILE:I = 0x8

.field public static final FLAG_HAS_ICON_RES:I = 0x4

.field public static final FLAG_ICON_FILE_PENDING_SAVE:I = 0x800

.field public static final FLAG_IMMUTABLE:I = 0x100

.field public static final FLAG_KEY_FIELDS_ONLY:I = 0x10

.field public static final FLAG_MANIFEST:I = 0x20

.field public static final FLAG_PINNED:I = 0x2

.field public static final FLAG_RETURNED_BY_SERVICE:I = 0x400

.field public static final FLAG_SHADOW:I = 0x1000

.field public static final FLAG_STRINGS_RESOLVED:I = 0x80

.field private static final IMPLICIT_RANK_MASK:I = 0x7fffffff

.field private static final RANK_CHANGED_BIT:I = -0x80000000

.field public static final RANK_NOT_SET:I = 0x7fffffff

.field private static final RES_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final SHORTCUT_CATEGORY_CONVERSATION:Ljava/lang/String; = "android.shortcut.conversation"

.field static final TAG:Ljava/lang/String; = "Shortcut"

.field public static final VERSION_CODE_UNKNOWN:I = -0x1


# instance fields
.field private mActivity:Landroid/content/ComponentName;

.field private mBitmapPath:Ljava/lang/String;

.field private mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledMessage:Ljava/lang/CharSequence;

.field private mDisabledMessageResId:I

.field private mDisabledMessageResName:Ljava/lang/String;

.field private mDisabledReason:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconResId:I

.field private mIconResName:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mImplicitRank:I

.field private mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

.field private mIntents:[Landroid/content/Intent;

.field private mLastChangedTimestamp:J

.field private final mPackageName:Ljava/lang/String;

.field private mRank:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextResId:I

.field private mTextResName:Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I

.field private mTitleResName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/ShortcutInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/PersistableBundle;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    move/from16 v7, p7

    iput v7, v0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    move/from16 v10, p10

    iput v10, v0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    move/from16 v13, p13

    iput v13, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    invoke-static/range {p15 .. p15}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-static/range {p16 .. p16}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    move/from16 v15, p17

    iput v15, v0, Landroid/content/pm/ShortcutInfo;->mRank:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    move/from16 v1, p21

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    move/from16 v2, p22

    iput v2, v0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    move-object/from16 v1, p23

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    move/from16 v1, p25

    iput v1, v0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ShortcutInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$000(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$100(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shortcut ID must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$000(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$200(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$300(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$400(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$500(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$600(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$700(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$800(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$900(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$1000(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$1100(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$1200(Landroid/content/pm/ShortcutInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo$Builder;->access$1300(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->updateTimestamp()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/ShortcutInfo;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mFlags:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    iget-wide v0, p1, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    :cond_1
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    :cond_3
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    const-class v1, Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ShortcutInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1400([Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "\n  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private static cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/PersistableBundle;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private fixUpIntentExtras()V
    .locals 6

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    new-array v0, v0, [Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aput-object v1, v4, v0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    aput-object v5, v4, v0

    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getDisabledReasonDebugString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Disabled: unknown reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "[Disabled: unknown restore issue]"

    return-object v0

    :pswitch_1
    const-string v0, "[Disabled: signature mismatch]"

    return-object v0

    :pswitch_2
    const-string v0, "[Disabled: backup not supported]"

    return-object v0

    :pswitch_3
    const-string v0, "[Disabled: lower version]"

    return-object v0

    :pswitch_4
    const-string v0, "[Disabled: app changed]"

    return-object v0

    :pswitch_5
    const-string v0, "[Disabled: by app]"

    return-object v0

    :pswitch_6
    const-string v0, "[Not disabled]"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDisabledReasonForRestoreIssue(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    const v1, 0x104060d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    const v1, 0x104060c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    const v1, 0x104060b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3
    const v1, 0x104060e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const v1, 0x104060a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInvalidIconException()Ljava/lang/IllegalArgumentException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported icon type: only the bitmap and resource types are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getResourceEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResourcePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Shortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource for ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public static getResourceTypeAndEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x2f

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isDisabledForRestoreIssue(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :goto_0
    nop

    const-string v2, "Shortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID for name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourcePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourceTypeAndEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getResourceEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "Shortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource name for ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not found in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method private toStringInner(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "ShortcutInfo {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "***"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    const-string v1, "Sdw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Dis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Im"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Man"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Dyn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Pin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Ic-f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Pens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Ic-r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasStringResourcesResolved()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Str"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Rets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v1, "shortLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_e

    const-string v1, "***"

    goto :goto_1

    :cond_e
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v1, "longLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "***"

    goto :goto_2

    :cond_f
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "disabledMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_10

    const-string v1, "***"

    goto :goto_3

    :cond_10
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "disabledReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-static {v1}, Landroid/content/pm/ShortcutInfo;->getDisabledReasonDebugString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v1, "rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "intents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-nez v1, :cond_11

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_11
    if-eqz p1, :cond_12

    const-string/jumbo v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_12
    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_13
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_14

    invoke-direct {p0, v0, p3}, Landroid/content/pm/ShortcutInfo;->addIndentOrComma(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, "iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmapPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_0
    :pswitch_0
    nop

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Icons with tints are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addFlags(I)V
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    return-void
.end method

.method public clearFlags(I)V
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    return-void
.end method

.method public clearIcon()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public clearIconPendingSave()V
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void
.end method

.method public clearImplicitRankAndRankChangedFlag()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    return-void
.end method

.method public clone(I)Landroid/content/pm/ShortcutInfo;
    .locals 1

    new-instance v0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {v0, p0, p1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;I)V

    return-object v0
.end method

.method public copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-eqz v0, :cond_3

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-eqz v0, :cond_5

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    :cond_5
    :goto_1
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    iput v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-eqz v0, :cond_7

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iput-object v2, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    :cond_7
    :goto_2
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    :cond_8
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->clonePersistableBundle([Landroid/os/PersistableBundle;)[Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    :cond_9
    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_a

    iget v0, p1, Landroid/content/pm/ShortcutInfo;->mRank:I

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    :cond_a
    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    :cond_b
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enforceMandatoryFields(Z)V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    const-string v1, "Shortcut ID must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    const-string v1, "Activity must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Short label must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    const-string v1, "Shortcut Intent must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Shortcut Intent must be provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    const-string v1, "[Framework BUG] Invisible shortcuts can\'t be updated"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    iget v1, p1, Landroid/content/pm/ShortcutInfo;->mUserId:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Owner User ID must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ID must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Package name must match"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "Target ShortcutInfo is immutable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getActivity()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDisabledMessageResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledMessageResourceId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    return v0
.end method

.method public getDisabledReason()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getIconResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImplicitRank()I
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentPersistableExtrases()[Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    iget-object v3, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIntentsNoExtras()[Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    return-wide v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLongLabelResourceId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortLabelResourceId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextResId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    return v0
.end method

.method public getTextResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    return v0
.end method

.method public getTitleResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    return v0
.end method

.method public hasAdaptiveBitmap()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public hasAnyResources()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasFlags(I)Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIconFile()Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public hasIconResource()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public hasKeyFieldsOnly()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public hasRank()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStringResources()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasStringResourcesResolved()Z
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public isAlive()Z
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public isDynamicVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isFloating()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconPendingSave()Z
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public isManifestShortcut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    return v0
.end method

.method public isManifestVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOriginallyFromManifest()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public isPinnedVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRankChanged()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReturnedByServer()Z
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleToPublisher()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-static {v0}, Landroid/content/pm/ShortcutInfo;->isDisabledForRestoreIssue(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public lookupAndFillInResourceIds(Landroid/content/res/Resources;)V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    const-string/jumbo v1, "string"

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    const-string/jumbo v1, "string"

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    const-string/jumbo v1, "string"

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    return-void
.end method

.method public lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    .locals 3

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->lookUpResourceName(Landroid/content/res/Resources;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    return-void
.end method

.method public replaceFlags(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    return-void
.end method

.method public resolveResourceStrings(Landroid/content/res/Resources;)V
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    :cond_1
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    :cond_2
    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iget-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0, v1}, Landroid/content/pm/ShortcutInfo;->getResourceString(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    :cond_3
    return-void
.end method

.method public setActivity(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public setBitmapPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    return-void
.end method

.method public setCategories(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->cloneCategories(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    return-void
.end method

.method public setDisabledMessage(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    return-void
.end method

.method public setDisabledMessageResId(I)V
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    :cond_0
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    iput-object v1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDisabledMessageResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    return-void
.end method

.method public setDisabledReason(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    return-void
.end method

.method public setIconPendingSave()V
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    return-void
.end method

.method public setIconResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    return-void
.end method

.method public setIconResourceId(I)V
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    :cond_0
    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    return-void
.end method

.method public setImplicitRank(I)V
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    return-void
.end method

.method public setIntents([Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->cloneIntents([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/pm/ShortcutInfo;->fixUpIntentExtras()V

    return-void
.end method

.method public setRank(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    return-void
.end method

.method public setRankChanged()V
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ShortcutInfo;->mImplicitRank:I

    return-void
.end method

.method public setReturnedByServer()V
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    return-void
.end method

.method public setTextResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    return-void
.end method

.method public setTitleResName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    return-void
.end method

.method public toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInsecureString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/ShortcutInfo;->toStringInner(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTimestamp()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    return-void
.end method

.method public usesQuota()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/pm/ShortcutInfo;->mLastChangedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntents:[Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIntentPersistableExtrases:[Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/content/pm/ShortcutInfo;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mIconResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTitleResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mTextResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mDisabledMessageResName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/content/pm/ShortcutInfo;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
