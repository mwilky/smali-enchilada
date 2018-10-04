.class Landroid/graphics/drawable/VectorDrawable$VFullPath$10;
.super Ljava/util/HashMap;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VFullPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/util/Property;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "strokeWidth"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4000()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "strokeColor"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4100()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "strokeAlpha"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4200()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fillColor"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4300()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fillAlpha"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4400()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "trimPathStart"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4500()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "trimPathEnd"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4600()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "trimPathOffset"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->access$4700()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
