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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "wlan"    # Ljava/lang/Integer;
    .param p4, "mobile"    # Ljava/lang/Integer;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->id:Ljava/lang/Integer;

    .line 27
    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    .line 29
    iput-object p4, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "wlan"    # Ljava/lang/Integer;
    .param p3, "mobile"    # Ljava/lang/Integer;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    .line 21
    iput-object p3, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    .line 22
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMobile()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getWlan()Ljava/lang/Integer;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .line 37
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->id:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setMobile(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/Integer;

    .line 61
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->mobile:Ljava/lang/Integer;

    .line 62
    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->pkg:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setWlan(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "wlan"    # Ljava/lang/Integer;

    .line 53
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFirewallRule;->wlan:Ljava/lang/Integer;

    .line 54
    return-void
.end method
