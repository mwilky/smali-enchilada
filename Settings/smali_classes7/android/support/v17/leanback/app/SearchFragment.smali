.class public Landroid/support/v17/leanback/app/SearchFragment;
.super Landroid/app/Fragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;,
        Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ARG_PREFIX:Ljava/lang/String;

.field private static final ARG_QUERY:Ljava/lang/String;

.field private static final ARG_TITLE:Ljava/lang/String;

.field static final AUDIO_PERMISSION_REQUEST_CODE:I = 0x0

.field static final DEBUG:Z = false

.field private static final EXTRA_LEANBACK_BADGE_PRESENT:Ljava/lang/String; = "LEANBACK_BADGE_PRESENT"

.field static final QUERY_COMPLETE:I = 0x2

.field static final RESULTS_CHANGED:I = 0x1

.field static final SPEECH_RECOGNITION_DELAY_MS:J = 0x12cL

.field static final TAG:Ljava/lang/String;


# instance fields
.field final mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mAutoStartRecognition:Z

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

.field final mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field mPendingQuery:Ljava/lang/String;

.field private mPendingStartRecognitionWhenPaused:Z

.field private mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

.field mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

.field mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mResultsChangedCallback:Ljava/lang/Runnable;

.field mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

.field mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

.field private final mSetSearchResultProvider:Ljava/lang/Runnable;

.field private mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field final mStartRecognitionRunnable:Ljava/lang/Runnable;

.field mStatus:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-class v0, Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchFragment;->TAG:Ljava/lang/String;

    .line 78
    const-class v0, Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_PREFIX:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 128
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$1;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$2;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    .line 163
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$3;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    .line 207
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$4;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    .line 236
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$5;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    .line 766
    return-void
.end method

.method private applyExternalQuery()V
    .locals 2

    .line 739
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;->mSubmit:Z

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchFragment;->submitQuery(Ljava/lang/String;)V

    .line 746
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    .line 747
    return-void

    .line 740
    :cond_2
    :goto_0
    return-void
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "query"    # Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v17/leanback/app/SearchFragment;->createArgs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 264
    if-nez p0, :cond_0

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    .line 267
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-object p0
.end method

.method private focusOnResults()V
    .locals 1

    .line 709
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 710
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    .line 716
    :cond_1
    return-void

    .line 711
    :cond_2
    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v17/leanback/app/SearchFragment;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;

    .line 282
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/SearchFragment;-><init>()V

    .line 283
    .local v0, "fragment":Landroid/support/v17/leanback/app/SearchFragment;
    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/support/v17/leanback/app/SearchFragment;->createArgs(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 284
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 285
    return-object v0
.end method

.method private onSetSearchResultProvider()V
    .locals 2

    .line 719
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 720
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .line 750
    if-nez p1, :cond_0

    .line 751
    return-void

    .line 753
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/SearchFragment;->setSearchQuery(Ljava/lang/String;)V

    .line 757
    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchFragment;->setTitle(Ljava/lang/String;)V

    .line 760
    :cond_2
    return-void
.end method

.method private releaseRecognizer()V
    .locals 2

    .line 437
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    .line 439
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 440
    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 442
    :cond_0
    return-void
.end method

.method private resultsAvailable()V
    .locals 1

    .line 372
    iget v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->focusOnResults()V

    .line 375
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->updateSearchBarNextFocusId()V

    .line 376
    return-void
.end method

.method private setSearchQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 763
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    .line 764
    return-void
.end method


# virtual methods
.method public displayCompletions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 568
    .local p1, "completions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->displayCompletions(Ljava/util/List;)V

    .line 569
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 579
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 580
    return-void
.end method

.method executePendingQuery()V
    .locals 2

    .line 731
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    .line 733
    .local v0, "query":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    .line 734
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchFragment;->retrieveResults(Ljava/lang/String;)V

    .line 736
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 532
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 535
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizerIntent()Landroid/content/Intent;
    .locals 4

    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "recognizerIntent":Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 657
    const-string v1, "android.speech.extra.PROMPT"

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 659
    :cond_0
    const-string v1, "LEANBACK_BADGE_PRESENT"

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    return-object v0
.end method

.method public getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 514
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 290
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    .line 291
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    .line 293
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 299
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 301
    .local v0, "root":Landroid/view/View;
    sget v1, Landroid/support/v17/leanback/R$id;->lb_search_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 302
    .local v1, "searchFrame":Landroid/widget/FrameLayout;
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SearchBar;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    .line 303
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    new-instance v3, Landroid/support/v17/leanback/app/SearchFragment$6;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/SearchFragment$6;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchBarListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;)V

    .line 327
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    .line 328
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setPermissionListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;)V

    .line 329
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->applyExternalQuery()V

    .line 331
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/SearchFragment;->readArguments(Landroid/os/Bundle;)V

    .line 332
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/SearchFragment;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 336
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/SearchFragment;->setTitle(Ljava/lang/String;)V

    .line 340
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 341
    new-instance v2, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v2}, Landroid/support/v17/leanback/app/RowsFragment;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 342
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 343
    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    .line 346
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/app/RowsFragment;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 348
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    new-instance v3, Landroid/support/v17/leanback/app/SearchFragment$7;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/SearchFragment$7;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 363
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 364
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsFragment;->setExpand(Z)V

    .line 365
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    if-eqz v2, :cond_3

    .line 366
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->onSetSearchResultProvider()V

    .line 368
    :cond_3
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 422
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->releaseAdapter()V

    .line 423
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 424
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 415
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->releaseRecognizer()V

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mIsPaused:Z

    .line 417
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 418
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 248
    if-nez p1, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->startRecognition()V

    .line 254
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 397
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mIsPaused:Z

    .line 399
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    .line 400
    nop

    .line 401
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 400
    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 402
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    .line 404
    :cond_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    if-eqz v1, :cond_1

    .line 405
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    .line 406
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 411
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 380
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 382
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 383
    .local v0, "list":Landroid/support/v17/leanback/widget/VerticalGridView;
    nop

    .line 384
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_search_browse_rows_align_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 385
    .local v1, "mContainerListAlignTop":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 386
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 387
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 388
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 389
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 391
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    .line 392
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    .line 393
    return-void
.end method

.method queryComplete()V
    .locals 1

    .line 679
    iget v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    .line 680
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->focusOnResults()V

    .line 681
    return-void
.end method

.method releaseAdapter()V
    .locals 2

    .line 724
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 728
    :cond_0
    return-void
.end method

.method retrieveResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchQuery"    # Ljava/lang/String;

    .line 665
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    .line 668
    :cond_0
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 522
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 523
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_0
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 487
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    if-eq p1, v0, :cond_0

    .line 488
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 489
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 493
    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 477
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 478
    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1
    .param p1, "colors"    # Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 544
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 547
    :cond_0
    return-void
.end method

.method public setSearchAffordanceColorsInListening(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1
    .param p1, "colors"    # Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 555
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchAffordanceColorsInListening(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 558
    :cond_0
    return-void
.end method

.method public setSearchQuery(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "submit"    # Z

    .line 630
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 631
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 632
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Landroid/support/v17/leanback/app/SearchFragment;->setSearchQuery(Ljava/lang/String;Z)V

    .line 634
    :cond_0
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "submit"    # Z

    .line 610
    if-nez p1, :cond_0

    .line 611
    return-void

    .line 613
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    .line 614
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->applyExternalQuery()V

    .line 615
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    .line 617
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 619
    :cond_1
    return-void
.end method

.method public setSearchResultProvider(Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;)V
    .locals 1
    .param p1, "searchResultProvider"    # Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    .line 464
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    if-eq v0, p1, :cond_0

    .line 465
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    .line 466
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->onSetSearchResultProvider()V

    .line 468
    :cond_0
    return-void
.end method

.method public setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    .line 591
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    .line 594
    :cond_0
    if-eqz p1, :cond_1

    .line 595
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->releaseRecognizer()V

    .line 597
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 501
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mTitle:Ljava/lang/String;

    .line 502
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setTitle(Ljava/lang/String;)V

    .line 505
    :cond_0
    return-void
.end method

.method public startRecognition()V
    .locals 1

    .line 452
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    .line 457
    :goto_0
    return-void
.end method

.method submitQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 671
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->queryComplete()V

    .line 672
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 675
    :cond_0
    return-void
.end method

.method updateFocus()V
    .locals 2

    .line 700
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 701
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne v0, v1, :cond_0

    .line 702
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->focusOnResults()V

    goto :goto_0

    .line 704
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    .line 706
    :goto_0
    return-void
.end method

.method updateSearchBarNextFocusId()V
    .locals 2

    .line 690
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    .line 693
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 694
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 695
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getId()I

    move-result v0

    goto :goto_1

    .line 694
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 695
    :goto_1
    nop

    .line 696
    .local v0, "viewId":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setNextFocusDownId(I)V

    .line 697
    return-void

    .line 691
    .end local v0    # "viewId":I
    :cond_3
    :goto_2
    return-void
.end method

.method updateSearchBarVisibility()V
    .locals 3

    .line 684
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 685
    .local v0, "position":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 686
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 685
    :goto_2
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchBar;->setVisibility(I)V

    .line 687
    return-void
.end method
