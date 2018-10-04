.class public final Landroid/app/Notification$Action$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mIntent:Landroid/app/PendingIntent;

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private mSemanticAction:I

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Action;)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/app/Notification$Action;->access$000(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v6

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZI)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Action$Builder;->mAllowGeneratedReplies:Z

    iput-object p1, p0, Landroid/app/Notification$Action$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object p2, p0, Landroid/app/Notification$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/app/Notification$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz p5, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-static {v0, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    iput-boolean p6, p0, Landroid/app/Notification$Action$Builder;->mAllowGeneratedReplies:Z

    iput p7, p0, Landroid/app/Notification$Action$Builder;->mSemanticAction:I

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification$Action;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.extra.DATA_ONLY_INPUTS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/app/RemoteInput;

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/Notification$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/RemoteInput;

    invoke-virtual {v4}, Landroid/app/RemoteInput;->isDataOnly()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/RemoteInput;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/app/RemoteInput;

    iget-object v4, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    const-string v5, "android.extra.DATA_ONLY_INPUTS"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    move-object v9, v3

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/RemoteInput;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/app/RemoteInput;

    goto :goto_3

    :goto_4
    new-instance v3, Landroid/app/Notification$Action;

    iget-object v5, p0, Landroid/app/Notification$Action$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Landroid/app/Notification$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/app/Notification$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v10, p0, Landroid/app/Notification$Action$Builder;->mAllowGeneratedReplies:Z

    iget v11, p0, Landroid/app/Notification$Action$Builder;->mSemanticAction:I

    const/4 v12, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZILandroid/app/Notification$1;)V

    return-object v3
.end method

.method public extend(Landroid/app/Notification$Action$Extender;)Landroid/app/Notification$Action$Builder;
    .locals 0

    invoke-interface {p1, p0}, Landroid/app/Notification$Action$Extender;->extend(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action$Builder;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Action$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$Action$Builder;->mAllowGeneratedReplies:Z

    return-object p0
.end method

.method public setSemanticAction(I)Landroid/app/Notification$Action$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Action$Builder;->mSemanticAction:I

    return-object p0
.end method
