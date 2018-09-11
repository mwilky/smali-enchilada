.class public Landroid/support/v17/leanback/app/SearchSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;,
        Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;
    }
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

.field private mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

.field final mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field mPendingQuery:Ljava/lang/String;

.field private mPendingStartRecognitionWhenPaused:Z

.field private mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

.field mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

.field mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mResultsChangedCallback:Ljava/lang/Runnable;

.field mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

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

    .line 69
    const-class v0, Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->TAG:Ljava/lang/String;

    .line 73
    const-class v0, Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_PREFIX:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 123
    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    .line 158
    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    .line 231
    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    .line 761
    return-void
.end method

.method private applyExternalQuery()V
    .locals 2

    .line 734
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mSubmit:Z

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->submitQuery(Ljava/lang/String;)V

    .line 741
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    .line 742
    return-void

    .line 735
    :cond_2
    :goto_0
    return-void
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "query"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->createArgs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 259
    if-nez p0, :cond_0

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    .line 262
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-object p0
.end method

.method private focusOnResults()V
    .locals 1

    .line 704
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 705
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    .line 711
    :cond_1
    return-void

    .line 706
    :cond_2
    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v17/leanback/app/SearchSupportFragment;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;

    .line 277
    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;-><init>()V

    .line 278
    .local v0, "fragment":Landroid/support/v17/leanback/app/SearchSupportFragment;
    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->createArgs(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 279
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setArguments(Landroid/os/Bundle;)V

    .line 280
    return-object v0
.end method

.method private onSetSearchResultProvider()V
    .locals 2

    .line 714
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 715
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 716
    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .line 745
    if-nez p1, :cond_0

    .line 746
    return-void

    .line 748
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setSearchQuery(Ljava/lang/String;)V

    .line 752
    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setTitle(Ljava/lang/String;)V

    .line 755
    :cond_2
    return-void
.end method

.method private releaseRecognizer()V
    .locals 2

    .line 432
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    .line 434
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 435
    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 437
    :cond_0
    return-void
.end method

.method private resultsAvailable()V
    .locals 1

    .line 367
    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->focusOnResults()V

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateSearchBarNextFocusId()V

    .line 371
    return-void
.end method

.method private setSearchQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 758
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    .line 759
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

    .line 563
    .local p1, "completions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->displayCompletions(Ljava/util/List;)V

    .line 564
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .line 574
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 575
    return-void
.end method

.method executePendingQuery()V
    .locals 2

    .line 726
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    .line 728
    .local v0, "query":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    .line 729
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->retrieveResults(Ljava/lang/String;)V

    .line 731
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 527
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 530
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizerIntent()Landroid/content/Intent;
    .locals 4

    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v0, "recognizerIntent":Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 651
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 652
    const-string v1, "android.speech.extra.PROMPT"

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 654
    :cond_0
    const-string v1, "LEANBACK_BADGE_PRESENT"

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    return-object v0
.end method

.method public getRowsSupportFragment()Landroid/support/v17/leanback/app/RowsSupportFragment;
    .locals 1

    .line 428
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 509
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 285
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    .line 286
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    .line 288
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 294
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, "root":Landroid/view/View;
    sget v1, Landroid/support/v17/leanback/R$id;->lb_search_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 297
    .local v1, "searchFrame":Landroid/widget/FrameLayout;
    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SearchBar;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    .line 298
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    new-instance v3, Landroid/support/v17/leanback/app/SearchSupportFragment$6;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchBarListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;)V

    .line 322
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    .line 323
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setPermissionListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;)V

    .line 324
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->applyExternalQuery()V

    .line 326
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->readArguments(Landroid/os/Bundle;)V

    .line 327
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setTitle(Ljava/lang/String;)V

    .line 335
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 336
    new-instance v2, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 337
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 338
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    .line 341
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/app/RowsSupportFragment;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 343
    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    new-instance v3, Landroid/support/v17/leanback/app/SearchSupportFragment$7;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 358
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 359
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setExpand(Z)V

    .line 360
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eqz v2, :cond_3

    .line 361
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->onSetSearchResultProvider()V

    .line 363
    :cond_3
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 417
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseAdapter()V

    .line 418
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 419
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 410
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseRecognizer()V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    .line 412
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 413
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 243
    if-nez p1, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->startRecognition()V

    .line 249
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 392
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    .line 394
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    .line 395
    nop

    .line 396
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 395
    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 397
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    .line 399
    :cond_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    if-eqz v1, :cond_1

    .line 400
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    .line 401
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 406
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 375
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 377
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 378
    .local v0, "list":Landroid/support/v17/leanback/widget/VerticalGridView;
    nop

    .line 379
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_search_browse_rows_align_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 380
    .local v1, "mContainerListAlignTop":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 381
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 383
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 384
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 386
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    .line 387
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    .line 388
    return-void
.end method

.method queryComplete()V
    .locals 1

    .line 674
    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    .line 675
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->focusOnResults()V

    .line 676
    return-void
.end method

.method releaseAdapter()V
    .locals 2

    .line 719
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 723
    :cond_0
    return-void
.end method

.method retrieveResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchQuery"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    .line 663
    :cond_0
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 517
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 518
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    :cond_0
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 482
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    if-eq p1, v0, :cond_0

    .line 483
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 484
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 488
    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 472
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 473
    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1
    .param p1, "colors"    # Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 539
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 542
    :cond_0
    return-void
.end method

.method public setSearchAffordanceColorsInListening(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1
    .param p1, "colors"    # Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 550
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchAffordanceColorsInListening(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 553
    :cond_0
    return-void
.end method

.method public setSearchQuery(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "submit"    # Z

    .line 625
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 626
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 627
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setSearchQuery(Ljava/lang/String;Z)V

    .line 629
    :cond_0
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "submit"    # Z

    .line 605
    if-nez p1, :cond_0

    .line 606
    return-void

    .line 608
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    .line 609
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->applyExternalQuery()V

    .line 610
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    .line 612
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 614
    :cond_1
    return-void
.end method

.method public setSearchResultProvider(Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;)V
    .locals 1
    .param p1, "searchResultProvider"    # Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    .line 459
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eq v0, p1, :cond_0

    .line 460
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    .line 461
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->onSetSearchResultProvider()V

    .line 463
    :cond_0
    return-void
.end method

.method public setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    .line 586
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    .line 589
    :cond_0
    if-eqz p1, :cond_1

    .line 590
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseRecognizer()V

    .line 592
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 496
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    .line 497
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setTitle(Ljava/lang/String;)V

    .line 500
    :cond_0
    return-void
.end method

.method public startRecognition()V
    .locals 1

    .line 447
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    .line 452
    :goto_0
    return-void
.end method

.method submitQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 666
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->queryComplete()V

    .line 667
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 670
    :cond_0
    return-void
.end method

.method updateFocus()V
    .locals 2

    .line 695
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 696
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne v0, v1, :cond_0

    .line 697
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->focusOnResults()V

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    .line 701
    :goto_0
    return-void
.end method

.method updateSearchBarNextFocusId()V
    .locals 2

    .line 685
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    .line 688
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 689
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 690
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getId()I

    move-result v0

    goto :goto_1

    .line 689
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 690
    :goto_1
    nop

    .line 691
    .local v0, "viewId":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setNextFocusDownId(I)V

    .line 692
    return-void

    .line 686
    .end local v0    # "viewId":I
    :cond_3
    :goto_2
    return-void
.end method

.method updateSearchBarVisibility()V
    .locals 3

    .line 679
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 680
    .local v0, "position":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 681
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

    .line 680
    :goto_2
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchBar;->setVisibility(I)V

    .line 682
    return-void
.end method
