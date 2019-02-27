.class Landroid/view/autofill/AutofillManager$TrackedViews;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedViews"
.end annotation


# instance fields
.field private mInvisibleTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleTrackedIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)V
    .locals 6

    iput-object p1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->access$400(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsVisibleForAutofill()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    const-string v2, "client is visible, check tracked ids"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z

    move-result-object v1

    goto :goto_0

    :cond_1
    array-length v1, p2

    new-array v1, v1, [Z

    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    aget-boolean v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v4}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    iput-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v4}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    iput-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_4

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TrackedViews(trackedIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "):  mVisibleTrackedIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mInvisibleTrackedIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    return-object v0
.end method

.method private addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method


# virtual methods
.method notifyViewVisibilityChangedLocked(Landroid/view/autofill/AutofillId;Z)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewVisibilityChangedLocked(): id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->access$700(Landroid/view/autofill/AutofillManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->isInSet(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->removeFromSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v0, :cond_4

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No more visible ids. Invisibile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;)V

    :cond_4
    return-void
.end method

.method onVisibleForAutofillChangedLocked()V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->access$400(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_0

    const-string v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVisibleForAutofillChangedLocked(): inv= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " vis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    nop

    invoke-static {v3}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v7, v2

    move-object v2, v1

    move v1, v4

    :goto_0
    if-ge v1, v6, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    aget-boolean v9, v5, v1

    if-eqz v9, :cond_1

    invoke-direct {p0, v2, v8}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    sget-boolean v9, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_2

    const-string v9, "AutofillManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onVisibleForAutofill() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " became visible"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-direct {p0, v7, v8}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v7

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v2

    move-object v2, v7

    :cond_4
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    nop

    invoke-static {v3}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetViewVisibility([Landroid/view/autofill/AutofillId;)[Z

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    nop

    :goto_2
    if-ge v4, v6, :cond_7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    aget-boolean v8, v5, v4

    if-eqz v8, :cond_5

    invoke-direct {p0, v1, v7}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-direct {p0, v2, v7}, Landroid/view/autofill/AutofillManager$TrackedViews;->addToSet(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    sget-boolean v8, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_6

    const-string v8, "AutofillManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onVisibleForAutofill() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " became invisible"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    iput-object v2, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mInvisibleTrackedIds:Landroid/util/ArraySet;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    :cond_8
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->mVisibleTrackedIds:Landroid/util/ArraySet;

    if-nez v3, :cond_a

    sget-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_9

    const-string v3, "AutofillManager"

    const-string/jumbo v4, "onVisibleForAutofillChangedLocked(): no more visible ids"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$TrackedViews;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;)V

    :cond_a
    return-void
.end method
