.class public Landroid/app/usage/EventList;
.super Ljava/lang/Object;
.source "EventList.java"


# instance fields
.field private final mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public firstIndexOnOrAfter(J)I
    .locals 8

    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-gt v2, v3, :cond_1

    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    iget-wide v5, v5, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v7, v5, p1

    if-ltz v7, :cond_0

    add-int/lit8 v3, v4, -0x1

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_1
    return v1
.end method

.method public get(I)Landroid/app/usage/UsageEvents$Event;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    return-object v0
.end method

.method public insert(Landroid/app/usage/UsageEvents$Event;)V
    .locals 5

    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v1, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v3, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageEvents$Event;

    iget-wide v3, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v1

    iget-object v2, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/app/usage/EventList;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
