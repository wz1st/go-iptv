package dto

type ZmtTV struct {
	Channels   []ZmtChannel   `xml:"channel"`
	Programmes []ZmtProgramme `xml:"programme"`
}

type ZmtChannel struct {
	ID          string `xml:"id,attr"`
	DisplayName string `xml:"display-name"`
}

type ZmtProgramme struct {
	Start   string `xml:"start,attr"`
	Stop    string `xml:"stop,attr"`
	Channel string `xml:"channel,attr"`
	Title   string `xml:"title"`
}
