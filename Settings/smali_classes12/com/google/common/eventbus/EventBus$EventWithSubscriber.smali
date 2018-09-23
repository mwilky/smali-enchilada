.class Lcom/google/common/eventbus/EventBus$EventWithSubscriber;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventWithSubscriber"
.end annotation


# instance fields
.field final event:Ljava/lang/Object;

.field final subscriber:Lcom/google/common/eventbus/EventSubscriber;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->event:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/EventSubscriber;

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->subscriber:Lcom/google/common/eventbus/EventSubscriber;

    return-void
.end method
