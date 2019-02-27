.class public final Landroid/service/autofill/FillResponse$Builder;
.super Ljava/lang/Object;
.source "FillResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAuthentication:Landroid/content/IntentSender;

.field private mAuthenticationIds:[Landroid/view/autofill/AutofillId;

.field private mClientState:Landroid/os/Bundle;

.field private mDatasets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mDisableDuration:J

.field private mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

.field private mFlags:I

.field private mFooter:Landroid/widget/RemoteViews;

.field private mHeader:Landroid/widget/RemoteViews;

.field private mIgnoredIds:[Landroid/view/autofill/AutofillId;

.field private mPresentation:Landroid/widget/RemoteViews;

.field private mSaveInfo:Landroid/service/autofill/SaveInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/FillResponse$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/SaveInfo;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/service/autofill/FillResponse$Builder;)I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    return v0
.end method

.method static synthetic access$200(Landroid/service/autofill/FillResponse$Builder;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/autofill/FillResponse$Builder;)Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method static synthetic access$700(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$900(Landroid/service/autofill/FillResponse$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    return-wide v0
.end method

.method private throwIfAuthenticationCalled()V
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #setAuthentication()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfDisableAutofillCalled()V
    .locals 4

    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #disableAutofill()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    return-object p0
.end method

.method public build()Landroid/service/autofill/FillResponse;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need to provide: at least one DataSet, or a SaveInfo, or an authentication with a presentation, or a FieldsDetection, or a client state, or disable autofill"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "must add at least 1 dataset when using header or footer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/FillResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/FillResponse;-><init>(Landroid/service/autofill/FillResponse$Builder;Landroid/service/autofill/FillResponse$1;)V

    return-object v0
.end method

.method public disableAutofill(J)Landroid/service/autofill/FillResponse$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mDatasets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroid/service/autofill/FillResponse$Builder;->mDisableDuration:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disableAutofill() must be the only method called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthentication([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    move v0, v1

    nop

    :cond_1
    xor-int/2addr v0, v2

    if-nez v0, :cond_2

    iput-object p2, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthentication:Landroid/content/IntentSender;

    iput-object p3, p0, Landroid/service/autofill/FillResponse$Builder;->mPresentation:Landroid/widget/RemoteViews;

    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authentication and presentation must be both non-null or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #setHeader() or #setFooter()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mClientState:Landroid/os/Bundle;

    return-object p0
.end method

.method public varargs setFieldClassificationIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    const-string v0, "ids"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    array-length v0, p1

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v1

    const-string v2, "ids length"

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    iget v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    or-int/2addr v0, v3

    iput v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    return-object p0
.end method

.method public setFlags(I)Landroid/service/autofill/FillResponse$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFlags:I

    return-object p0
.end method

.method public setFooter(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfAuthenticationCalled()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mFooter:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfAuthenticationCalled()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/FillResponse$Builder;->mHeader:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public varargs setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDestroyed()V

    invoke-direct {p0}, Landroid/service/autofill/FillResponse$Builder;->throwIfDisableAutofillCalled()V

    iput-object p1, p0, Landroid/service/autofill/FillResponse$Builder;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    return-object p0
.end method
