.class public Lcom/oneplus/settings/utils/OPFirewallRule;
.super Ljava/lang/Object;
.source "OPFirewallRule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirewallRule"


# instance fields
.field private id:Ljava/lang/Integer;

.field private mobile:Ljava/lang/Integer;

.field private pkg:Ljava/lang/String;

.field private wlan:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMobile()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getWlan()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMobile(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setWlan(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    return-void
.end method
