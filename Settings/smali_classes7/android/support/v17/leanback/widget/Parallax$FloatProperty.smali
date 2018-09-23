.class public Landroid/support/v17/leanback/widget/Parallax$FloatProperty;
.super Landroid/util/Property;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/v17/leanback/widget/Parallax;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNKNOWN_AFTER:F = 3.4028235E38f

.field public static final UNKNOWN_BEFORE:F = -3.4028235E38f


# instance fields
.field private final mIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput p2, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    return-void
.end method


# virtual methods
.method public final at(FF)Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;-><init>(Landroid/support/v17/leanback/widget/Parallax$FloatProperty;FF)V

    return-object v0
.end method

.method public final atAbsolute(F)Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;-><init>(Landroid/support/v17/leanback/widget/Parallax$FloatProperty;FF)V

    return-object v0
.end method

.method public final atFraction(F)Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;-><init>(Landroid/support/v17/leanback/widget/Parallax$FloatProperty;FF)V

    return-object v0
.end method

.method public final atMax()Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    .locals 3

    new-instance v0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;-><init>(Landroid/support/v17/leanback/widget/Parallax$FloatProperty;FF)V

    return-object v0
.end method

.method public final atMin()Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    .locals 2

    new-instance v0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;-><init>(Landroid/support/v17/leanback/widget/Parallax$FloatProperty;F)V

    return-object v0
.end method

.method public final get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Float;
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/Parallax;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    return v0
.end method

.method public final getValue(Landroid/support/v17/leanback/widget/Parallax;)F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v0

    return v0
.end method

.method public final set(Landroid/support/v17/leanback/widget/Parallax;Ljava/lang/Float;)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/Parallax;->setFloatPropertyValue(IF)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/Parallax;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->set(Landroid/support/v17/leanback/widget/Parallax;Ljava/lang/Float;)V

    return-void
.end method

.method public final setValue(Landroid/support/v17/leanback/widget/Parallax;F)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->mIndex:I

    invoke-virtual {p1, v0, p2}, Landroid/support/v17/leanback/widget/Parallax;->setFloatPropertyValue(IF)V

    return-void
.end method
