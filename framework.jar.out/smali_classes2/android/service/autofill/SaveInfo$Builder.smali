.class public final Landroid/service/autofill/SaveInfo$Builder;
.super Ljava/lang/Object;
.source "SaveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCustomDescription:Landroid/service/autofill/CustomDescription;

.field private mDescription:Ljava/lang/CharSequence;

.field private mDestroyed:Z

.field private mFlags:I

.field private mNegativeActionListener:Landroid/content/IntentSender;

.field private mNegativeButtonStyle:I

.field private mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private final mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private mSanitizerIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mSanitizers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/service/autofill/InternalSanitizer;",
            "[",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggerId:Landroid/view/autofill/AutofillId;

.field private final mType:I

.field private mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-void
.end method

.method public constructor <init>(I[Landroid/view/autofill/AutofillId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    invoke-static {p2}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    return v0
.end method

.method static synthetic access$100(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    return v0
.end method

.method static synthetic access$1000(Landroid/service/autofill/SaveInfo$Builder;)Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    return v0
.end method

.method static synthetic access$700(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object v0
.end method

.method static synthetic access$900(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs addSanitizer(Landroid/service/autofill/Sanitizer;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 8

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "ids cannot be empty or null"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    instance-of v0, p1, Landroid/service/autofill/InternalSanitizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not provided by Android System: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    array-length v2, p2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    :cond_0
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p2, v3

    iget-object v5, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v1

    const-string v6, "already added %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    move-object v1, p1

    check-cast v1, Landroid/service/autofill/InternalSanitizer;

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Landroid/service/autofill/SaveInfo;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string/jumbo v2, "must have at least one required or optional id"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-boolean v1, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/SaveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo$1;)V

    return-object v0
.end method

.method public setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can call setDescription() or setCustomDescription(), but not both"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can call setDescription() or setCustomDescription(), but not both"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setFlags(I)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput-object p2, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object p0
.end method

.method public setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public setTriggerId(Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    instance-of v0, p1, Landroid/service/autofill/InternalValidator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not provided by Android System: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/service/autofill/InternalValidator;

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object p0
.end method
