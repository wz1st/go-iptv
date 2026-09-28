package dto

type AdminRedirectDto struct {
	Url      string `json:"url"`
	Redirect bool   `json:"redirect"`
}

func NewAdminRedirectDto() *AdminRedirectDto {
	return &AdminRedirectDto{
		Url:      "/admin/login",
		Redirect: true,
	}
}
