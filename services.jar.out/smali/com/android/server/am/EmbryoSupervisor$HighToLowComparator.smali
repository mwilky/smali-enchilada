.class public final Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;
.super Ljava/lang/Object;
.source "EmbryoSupervisor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HighToLowComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/EmbryoSupervisor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/EmbryoSupervisor;Lcom/android/server/am/EmbryoSupervisor;)I
    .locals 4

    invoke-static {p1}, Lcom/android/server/am/EmbryoSupervisor;->access$000(Lcom/android/server/am/EmbryoSupervisor;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/am/EmbryoSupervisor;->access$000(Lcom/android/server/am/EmbryoSupervisor;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/EmbryoSupervisor;->access$100(Lcom/android/server/am/EmbryoSupervisor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/am/EmbryoSupervisor;->access$100(Lcom/android/server/am/EmbryoSupervisor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/EmbryoSupervisor;

    check-cast p2, Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;->compare(Lcom/android/server/am/EmbryoSupervisor;Lcom/android/server/am/EmbryoSupervisor;)I

    move-result p1

    return p1
.end method
