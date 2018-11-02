.class public Lcom/oneplus/settings/gestures/OPGestureAppModel;
.super Ljava/lang/Object;
.source "OPGestureAppModel.java"


# instance fields
.field private ShortCutId:Ljava/lang/String;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private pkgName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->ShortCutId:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->uid:I

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortCutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->ShortCutId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->uid:I

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setShortCutId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->ShortCutId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->uid:I

    return-void
.end method
