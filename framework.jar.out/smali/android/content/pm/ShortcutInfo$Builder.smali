.class public Landroid/content/pm/ShortcutInfo$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActivity:Landroid/content/ComponentName;

.field private mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDisabledMessage:Ljava/lang/CharSequence;

.field private mDisabledMessageResId:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mId:Ljava/lang/String;

.field private mIntents:[Landroid/content/Intent;

.field private mRank:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextResId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    const-string v0, "id cannot be empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/pm/ShortcutInfo$Builder;)[Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    return v0
.end method

.method static synthetic access$1300(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    return v0
.end method

.method static synthetic access$600(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    return v0
.end method

.method static synthetic access$800(Landroid/content/pm/ShortcutInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/pm/ShortcutInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    return v0
.end method


# virtual methods
.method public build()Landroid/content/pm/ShortcutInfo;
    .locals 2

    new-instance v0, Landroid/content/pm/ShortcutInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/pm/ShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutInfo$1;)V

    return-object v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1

    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/ShortcutInfo$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mCategories:Ljava/util/Set;

    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "disabledMessageResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string v0, "disabledMessage cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDisabledMessageResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "disabledMessage already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mDisabledMessageResId:I

    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "id cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 5

    const-string v0, "intents cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "intents cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "intents cannot contain null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent\'s action must be set"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/content/pm/ShortcutInfo;->access$1400([Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mIntents:[Landroid/content/Intent;

    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "longLabelResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string/jumbo v0, "longLabel cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLongLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "longLabel already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTextResId:I

    return-object p0
.end method

.method public setRank(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Rank cannot be negative or bigger than MAX_RANK"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mRank:I

    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2

    iget v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "shortLabelResId already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string/jumbo v0, "shortLabel cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "shortLabel already set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput p1, p0, Landroid/content/pm/ShortcutInfo$Builder;->mTitleResId:I

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTextResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleResId(I)Landroid/content/pm/ShortcutInfo$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabelResId(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    return-object v0
.end method
