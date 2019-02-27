.class Landroid/net/IpPrefix$1;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/IpPrefix;->lengthComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/IpPrefix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/IpPrefix;Landroid/net/IpPrefix;)I
    .locals 11

    invoke-virtual {p1}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/IpPrefix;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-virtual {p2}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    return v1

    :cond_2
    if-ge v3, v0, :cond_3

    return v2

    :cond_3
    invoke-static {p1}, Landroid/net/IpPrefix;->access$000(Landroid/net/IpPrefix;)[B

    move-result-object v4

    invoke-static {p2}, Landroid/net/IpPrefix;->access$000(Landroid/net/IpPrefix;)[B

    move-result-object v5

    array-length v6, v4

    array-length v7, v5

    if-ge v6, v7, :cond_4

    array-length v6, v4

    goto :goto_0

    :cond_4
    array-length v6, v5

    :goto_0
    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_7

    aget-byte v9, v4, v8

    aget-byte v10, v5, v8

    if-ge v9, v10, :cond_5

    return v1

    :cond_5
    aget-byte v9, v4, v8

    aget-byte v10, v5, v8

    if-le v9, v10, :cond_6

    return v2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    array-length v8, v5

    if-ge v8, v6, :cond_8

    return v2

    :cond_8
    array-length v2, v4

    if-ge v2, v6, :cond_9

    return v1

    :cond_9
    return v7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/net/IpPrefix;

    check-cast p2, Landroid/net/IpPrefix;

    invoke-virtual {p0, p1, p2}, Landroid/net/IpPrefix$1;->compare(Landroid/net/IpPrefix;Landroid/net/IpPrefix;)I

    move-result p1

    return p1
.end method
