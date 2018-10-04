.class public Landroid/widget/ArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ArrayAdapter$ArrayFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/ThemedSpinnerAdapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private mDropDownResource:I

.field private mFieldId:I

.field private mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyOnChange:Z

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mObjectsFromResources:Z

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    iput p2, p0, Landroid/widget/ArrayAdapter;->mResource:I

    iput-object p4, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    iput-boolean p5, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    iput p3, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ArrayAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-object p1
.end method

.method public static createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Z)V

    return-object v7
.end method

.method private createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    if-nez p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p5, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    :try_start_0
    iget v1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    if-nez v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    :goto_1
    nop

    nop

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-object v0

    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find view with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in item layout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "ArrayAdapter"

    const-string v3, "You must supply a resource ID for a TextView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 4

    invoke-super {p0}, Landroid/widget/BaseAdapter;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v2

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :goto_1
    iget v6, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/ArrayAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ArrayAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter$1;)V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/widget/ArrayAdapter;->mResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ArrayAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    return-void
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    :goto_0
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
