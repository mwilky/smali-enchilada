.class Lcom/android/server/IntentResolver$1;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    move-object v1, p2

    check-cast v1, Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
