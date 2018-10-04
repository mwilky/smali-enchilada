.class Landroid/graphics/drawable/VectorDrawable$VGroup$9;
.super Ljava/util/HashMap;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable$VGroup;
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

    const-string/jumbo v0, "translateX"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$900()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "translateY"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$1000()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "scaleX"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$1100()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "scaleY"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$1200()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "pivotX"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$1300()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "pivotY"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$1400()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "rotation"

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable$VGroup;->access$1500()Landroid/util/Property;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
