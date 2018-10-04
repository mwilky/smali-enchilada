.class public Landroid/service/autofill/CustomDescription$Builder;
.super Ljava/lang/Object;
.source "CustomDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CustomDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private final mPresentation:Landroid/widget/RemoteViews;

.field private mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/InternalValidator;",
            "Landroid/service/autofill/BatchUpdates;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/CustomDescription$Builder;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/CustomDescription$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mTransformations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/autofill/CustomDescription$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mUpdates:Ljava/util/ArrayList;

    return-object v0
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/CustomDescription$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/CustomDescription$Builder;->throwIfDestroyed()V

    instance-of v0, p2, Landroid/service/autofill/InternalTransformation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not provided by Android System: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mTransformations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mTransformations:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mTransformations:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Landroid/service/autofill/InternalTransformation;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public batchUpdate(Landroid/service/autofill/Validator;Landroid/service/autofill/BatchUpdates;)Landroid/service/autofill/CustomDescription$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/CustomDescription$Builder;->throwIfDestroyed()V

    instance-of v0, p1, Landroid/service/autofill/InternalValidator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not provided by Android System: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mUpdates:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mUpdates:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mUpdates:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    move-object v2, p1

    check-cast v2, Landroid/service/autofill/InternalValidator;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/service/autofill/CustomDescription;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/CustomDescription$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/CustomDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/CustomDescription;-><init>(Landroid/service/autofill/CustomDescription$Builder;Landroid/service/autofill/CustomDescription$1;)V

    return-object v0
.end method
