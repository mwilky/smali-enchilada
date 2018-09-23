.class public Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;
.super Landroid/support/v7/preference/PreferenceGroupAdapter;
.source "HighlightablePreferenceGroupAdapter.java"


# static fields
.field static final DELAY_HIGHLIGHT_DURATION_MILLIS:J = 0x258L
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final HIGHLIGHT_DURATION:J = 0x3a98L

.field private static final HIGHLIGHT_FADE_IN_DURATION:J = 0xc8L

.field private static final HIGHLIGHT_FADE_OUT_DURATION:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "HighlightableAdapter"


# instance fields
.field mFadeInAnimated:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mHighlightColor:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHighlightKey:Ljava/lang/String;

.field private mHighlightPosition:I

.field private mHighlightRequested:Z

.field private final mNormalBackgroundRes:I


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    iput-object p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    iput v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    const v2, 0x7f060398

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    return v0
.end method

.method private addHighlightBackground(Landroid/view/View;Z)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f0a03f6

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v0, "HighlightableAdapter"

    const-string v1, "AddHighlight: Not animation requested - setting highlight background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;

    invoke-direct {v3, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$piymLpeUf2m74Yz5ep7jpdxw2ho;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const-string v3, "HighlightableAdapter"

    const-string v4, "AddHighlight: starting fade in animation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V

    return-void
.end method

.method public static adjustInitialExpandedChildCount(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getInitialExpandedChildCount()I

    move-result v2

    if-gtz v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    return-void
.end method

.method static synthetic lambda$addHighlightBackground$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$removeHighlightBackground$3(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic lambda$requestHighlight$0(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public static synthetic lambda$requestRemoveHighlightDelayed$1(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    return-void
.end method

.method private removeHighlightBackground(Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x0

    const v1, 0x7f0a03f6

    if-nez p2, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "HighlightableAdapter"

    const-string v1, "RemoveHighlight: No animation requested - setting normal background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "HighlightableAdapter"

    const-string v1, "RemoveHighlight: Not highlighted - skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    const/4 v3, -0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$HMY634RMu5R2WoggcFMdrEe8uA0;

    invoke-direct {v1, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$HMY634RMu5R2WoggcFMdrEe8uA0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const-string v1, "HighlightableAdapter"

    const-string v4, "Starting fade out animation"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isHighlightRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->updateBackground(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public requestHighlight(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$Xc5BA2nCks8YuSzn7LsPZS7EmPA;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/support/v7/widget/RecyclerView;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method requestRemoveHighlightDelayed(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$CKVsKq8Jy7vb9RpitMwq8ps1ehE;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/-$$Lambda$HighlightablePreferenceGroupAdapter$CKVsKq8Jy7vb9RpitMwq8ps1ehE;-><init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateBackground(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->addHighlightBackground(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v2, 0x7f0a03f6

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method
