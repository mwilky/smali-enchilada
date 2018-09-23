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

    const-class v0, Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->TAG:Ljava/lang/String;

    const-class v0, Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

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

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    return-void
.end method

.method private applyExternalQuery()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mSubmit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->submitQuery(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->createArgs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p0, v0

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private focusOnResults()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v17/leanback/app/SearchSupportFragment;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->createArgs(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onSetSearchResultProvider()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setSearchQuery(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v17/leanback/app/SearchSupportFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setTitle(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private releaseRecognizer()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    :cond_0
    return-void
.end method

.method private resultsAvailable()V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->focusOnResults()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->updateSearchBarNextFocusId()V

    return-void
.end method

.method private setSearchQuery(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

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

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->displayCompletions(Ljava/util/List;)V

    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method executePendingQuery()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->retrieveResults(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizerIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "android.speech.extra.PROMPT"

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    const-string v1, "LEANBACK_BADGE_PRESENT"

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getRowsSupportFragment()Landroid/support/v17/leanback/app/RowsSupportFragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->lb_search_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sget v2, Landroid/support/v17/leanback/R$id;->lb_search_bar:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SearchBar;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    new-instance v3, Landroid/support/v17/leanback/app/SearchSupportFragment$6;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchBarListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SearchBar;->setPermissionListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->applyExternalQuery()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->readArguments(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setTitle(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {v2}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/app/RowsSupportFragment;

    iput-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    :goto_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    new-instance v3, Landroid/support/v17/leanback/app/SearchSupportFragment$7;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/SearchSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/SearchSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setExpand(Z)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->onSetSearchResultProvider()V

    :cond_3
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseAdapter()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseRecognizer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    if-nez p1, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v0, p3, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->startRecognition()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    nop

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    :cond_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    nop

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_search_browse_rows_align_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method queryComplete()V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->focusOnResults()V

    return-void
.end method

.method releaseAdapter()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    :cond_0
    return-void
.end method

.method retrieveResults(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStatus:I

    :cond_0
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    :cond_0
    return-void
.end method

.method public setSearchAffordanceColorsInListening(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchAffordanceColorsInListening(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    :cond_0
    return-void
.end method

.method public setSearchQuery(Landroid/content/Intent;Z)V
    .locals 2

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Landroid/support/v17/leanback/app/SearchSupportFragment;->setSearchQuery(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchSupportFragment$ExternalQuery;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->applyExternalQuery()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mAutoStartRecognition:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setSearchResultProvider(Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->onSetSearchResultProvider()V

    :cond_0
    return-void
.end method

.method public setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->releaseRecognizer()V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRecognition()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mIsPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mPendingStartRecognitionWhenPaused:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    :goto_0
    return-void
.end method

.method submitQuery(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->queryComplete()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mProvider:Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchSupportFragment$SearchResultProvider;->onQueryTextSubmit(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method updateFocus()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchSupportFragment;->focusOnResults()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    :goto_0
    return-void
.end method

.method updateSearchBarNextFocusId()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getId()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    nop

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setNextFocusDownId(I)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method updateSearchBarVisibility()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchSupportFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

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

    :goto_2
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchBar;->setVisibility(I)V

    return-void
.end method
