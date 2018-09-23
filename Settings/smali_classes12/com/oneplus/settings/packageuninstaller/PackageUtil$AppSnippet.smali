.class public Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/packageuninstaller/PackageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSnippet"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public label:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
