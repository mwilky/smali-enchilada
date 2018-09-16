.class Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "r1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r2"    # Landroid/content/pm/ResolveInfo;

    .line 14272
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 14273
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 14275
    .local v1, "v2":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 14276
    if-le v0, v1, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 14278
    :cond_1
    iget v0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 14279
    iget v1, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 14280
    if-eq v0, v1, :cond_3

    .line 14281
    if-le v0, v1, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2

    .line 14283
    :cond_3
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_5

    .line 14284
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v4, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2

    .line 14286
    :cond_5
    iget v0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 14287
    iget v1, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 14289
    if-eq v0, v1, :cond_7

    .line 14290
    if-le v0, v1, :cond_6

    move v2, v3

    nop

    :cond_6
    return v2

    .line 14292
    :cond_7
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v5, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v4, v5, :cond_9

    .line 14293
    iget-boolean v4, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_8

    move v2, v3

    nop

    :cond_8
    return v2

    .line 14295
    :cond_9
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_a

    .line 14296
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 14298
    :cond_a
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_b

    .line 14299
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 14301
    :cond_b
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_c

    .line 14302
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 14304
    :cond_c
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14270
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$6;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method
