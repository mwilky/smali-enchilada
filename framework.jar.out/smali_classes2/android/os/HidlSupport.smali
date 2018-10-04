.class public Landroid/os/HidlSupport;
.super Ljava/lang/Object;
.source "HidlSupport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HidlSupport$Mutable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    return v1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_4
    move-object v5, p0

    check-cast v5, [Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, [Ljava/lang/Object;

    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_5

    array-length v7, v5

    invoke-static {v1, v7}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v7

    new-instance v8, Landroid/os/-$$Lambda$HidlSupport$4ktYtLCfMafhYI23iSXUQOH_hxo;

    invoke-direct {v8, v5, v6}, Landroid/os/-$$Lambda$HidlSupport$4ktYtLCfMafhYI23iSXUQOH_hxo;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v4, p1

    check-cast v4, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_7

    return v1

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Landroid/os/-$$Lambda$HidlSupport$oV2DlGQSAfcavBj7TK20nYhwS0U;

    invoke-direct {v6, v1}, Landroid/os/-$$Lambda$HidlSupport$oV2DlGQSAfcavBj7TK20nYhwS0U;-><init>(Ljava/util/Iterator;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    return v5

    :cond_8
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_9
    :goto_1
    return v1
.end method

.method public static deepHashCode(Ljava/lang/Object;)I
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/os/HidlSupport;->primitiveArrayHashCode(Ljava/lang/Object;)I

    move-result v2

    return v2

    :cond_1
    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Landroid/os/-$$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw;->INSTANCE:Landroid/os/-$$Lambda$HidlSupport$GHxmwrIWiKN83tl6aMQt_nV5hiw;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    return v2

    :cond_2
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/os/-$$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA;->INSTANCE:Landroid/os/-$$Lambda$HidlSupport$CwwfmHPEvZaybUxpLzKdwrpQRfA;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    return v1

    :cond_3
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    return v1
.end method

.method public static native getPidIfSharable()I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public static interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/os/IHwInterface;

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/os/IHwInterface;

    invoke-interface {v1}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic lambda$deepEquals$0([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 2

    aget-object v0, p0, p2

    aget-object v1, p1, p2

    invoke-static {v0, v1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$deepEquals$1(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$deepHashCode$2(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$deepHashCode$3(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static primitiveArrayHashCode(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    return v1

    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    return v1

    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    move-object v1, p0

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    return v1

    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    move-object v1, p0

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    return v1

    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    move-object v1, p0

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    return v1

    :cond_4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    move-object v1, p0

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    return v1

    :cond_5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    move-object v1, p0

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    return v1

    :cond_6
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    move-object v1, p0

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    return v1

    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method private static throwErrorIfUnsupportedType(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot check equality on collections other than lists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot check equality on maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
