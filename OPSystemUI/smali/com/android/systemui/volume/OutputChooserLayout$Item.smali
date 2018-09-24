.class public Lcom/android/systemui/volume/OutputChooserLayout$Item;
.super Ljava/lang/Object;
.source "OutputChooserLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static DEVICE_TYPE_BT:I

.field public static DEVICE_TYPE_HEADSET:I

.field public static DEVICE_TYPE_MEDIA_ROUTER:I

.field public static DEVICE_TYPE_PHONE:I


# instance fields
.field public canDisconnect:Z

.field public deviceType:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public icon2:I

.field public iconResId:I

.field public line1:Ljava/lang/CharSequence;

.field public line2:Ljava/lang/CharSequence;

.field public selected:Z

.field public tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_PHONE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_HEADSET:I

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_BT:I

    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->DEVICE_TYPE_MEDIA_ROUTER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->icon2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    return-void
.end method
