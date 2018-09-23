.class final Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;
.super Ljava/lang/Object;
.source "OPCredentialTracer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/OPCredentialTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final sInstance:Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;

    invoke-direct {v0}, Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;->sInstance:Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;->getDate()Ljava/util/Date;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;

    check-cast p2, Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/OPCredentialTracer$ItemComparator;->compare(Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;Lcom/android/server/locksettings/OPCredentialTracer$HashInfo;)I

    move-result p1

    return p1
.end method
