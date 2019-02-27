.class Landroid/app/ResourcesManager$ApkKey;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkKey"
.end annotation


# instance fields
.field public final overlay:Z

.field public final path:Ljava/lang/String;

.field public final sharedLib:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    iput-boolean p3, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/app/ResourcesManager$ApkKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/ResourcesManager$ApkKey;

    iget-object v2, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    iget-boolean v3, v0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    iget-boolean v3, v0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$ApkKey;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/app/ResourcesManager$ApkKey;->sharedLib:Z

    invoke-static {v3}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v1, v0

    iget-boolean v2, p0, Landroid/app/ResourcesManager$ApkKey;->overlay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method
